#include <iostream>
#include <vector>
#include <cmath>
#include <Eigen/Dense>
#include <cnpy.h>
#include <matplotlibcpp.h>

namespace plt = matplotlibcpp;
using namespace Eigen;

// Define the sigmoid function
double sigmoid(double x) {
    return 1.0 / (1.0 + std::exp(-x));
}

// Define the tanh function
double tanh_custom(double x) {
    return std::tanh(x);
}

// Define the ReLU function
double relu(double x) {
    return std::max(0.0, x);
}

// Define the LSTM model
void lstm(const MatrixXd& x_t, const MatrixXd& wx, const MatrixXd& wh, const VectorXd& bx, const VectorXd& bh,
          const MatrixXd& W_dense1, const VectorXd& b_dense1, const MatrixXd& W_dense2, const VectorXd& b_dense2,
          VectorXd& output) {
    int time_steps = x_t.cols();
    int batch_size = x_t.rows();

    for (int i = 0; i < batch_size; ++i) {
        double h_t = 0.0;
        double c_t = 0.0;
        for (int j = 0; j < time_steps; ++j) {
            double i_t = sigmoid(wx(0, 0) * x_t(i, j) + wh(0, 0) * h_t + bx(0) + bh(0));
            double f_t = sigmoid(wx(1, 0) * x_t(i, j) + wh(1, 0) * h_t + bx(1) + bh(1));
            double s_t = tanh_custom(wx(2, 0) * x_t(i, j) + wh(2, 0) * h_t + bx(2) + bh(2));
            double o_t = sigmoid(wx(3, 0) * x_t(i, j) + wh(3, 0) * h_t + bx(3) + bh(3));
            c_t = f_t * c_t + (i_t * s_t);
            h_t = o_t * tanh_custom(c_t);
        }
        output(i) = (W_dense2 * (relu(W_dense1(0, 0) * h_t + b_dense1(0))) + b_dense2(0)).value();
    }
}

// Load data from .npy file using cnpy
MatrixXd load_matrix(const std::string& filename) {
    cnpy::NpyArray arr = cnpy::npy_load(filename);
    double* data = arr.data<double>();
    int rows = arr.shape[0];
    int cols = arr.shape.size() > 1 ? arr.shape[1] : 1;
    MatrixXd matrix(rows, cols);
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            matrix(i, j) = data[i * cols + j];
        }
    }
    return matrix;
}

VectorXd load_vector(const std::string& filename) {
    cnpy::NpyArray arr = cnpy::npy_load(filename);
    double* data = arr.data<double>();
    int size = arr.shape[0];
    VectorXd vector(size);
    for (int i = 0; i < size; ++i) {
        vector(i) = data[i];
    }
    return vector;
}

// Calculate mean squared error
double mean_squared_error(const VectorXd& y_true, const VectorXd& y_pred) {
    return std::sqrt((y_true - y_pred).array().square().mean());
}

int main() {
    // Load the weights and data
    MatrixXd wx = load_matrix("./Data/Weights/lstm_weight_ih_l0.npy");
    MatrixXd wh = load_matrix("./Data/Weights/lstm_weight_hh_l0.npy");
    VectorXd bx = load_vector("./Data/Weights/lstm_bias_ih_l0.npy");
    VectorXd bh = load_vector("./Data/Weights/lstm_bias_hh_l0.npy");

    MatrixXd W_dense1 = load_matrix("./Data/Weights/fc1_weight.npy");
    VectorXd b_dense1 = load_vector("./Data/Weights/fc1_bias.npy");
    MatrixXd W_dense2 = load_matrix("./Data/Weights/fc2_weight.npy");
    VectorXd b_dense2 = load_vector("./Data/Weights/fc2_bias.npy");

    MatrixXd x_t = load_matrix("./Data/xtest.npy"); // adjust the dimensions as needed
    VectorXd y_t = load_vector("./Data/ytest.npy"); // adjust the dimensions as needed

    // Run the model
    VectorXd output(y_t.size());
    lstm(x_t, wx, wh, bx, bh, W_dense1, b_dense1, W_dense2, b_dense2, output);

    // Mean Squared Error calculation
    double MSE = mean_squared_error(y_t, output);
    std::cout << "\nThe MSE is " << MSE << "." << std::endl;

    // Plot the results
    std::vector<double> y_t_vec(y_t.data(), y_t.data() + y_t.size());
    std::vector<double> output_vec(output.data(), output.data() + output.size());

    plt::figure();
    plt::plot(y_t_vec, {{"label", "Real measurements"}});
    plt::plot(output_vec, {{"label", "Predicted output"}});
    plt::legend();
    plt::suptitle("LSTM applied to test data");
    plt::title("MSE = " + std::to_string(MSE), 9);
    plt::show();

    return 0;
}

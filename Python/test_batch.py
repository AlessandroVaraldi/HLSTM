import os
import struct
import numpy as np
import time

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def tanh(x):
    return np.tanh(x)

def relu(x):
    return np.maximum(0, x)

def custom_lstm(x_t, wx, wh, bx, bh, W_dense1, b_dense1, W_dense2, b_dense2):
    num_samples, seq_len, input_dim = x_t.shape

    outputs = np.zeros(num_samples)  # Memorizza output per ogni timestep

    for i in range(num_samples):
        h_t = 0.0  # Reset dello stato nascosto per ogni sequenza
        c_t = 0.0  # Reset dello stato della cella per ogni sequenza

        for j in range(seq_len):
            x_step = x_t[i, j, 0]  # Dato di input per il timestep corrente

            # Calcolo dei gate LSTM e aggiornamento degli stati
            i_t = sigmoid(x_step * wx[0] + h_t * wh[0] + bx[0] + bh[0])
            f_t = sigmoid(x_step * wx[1] + h_t * wh[1] + bx[1] + bh[1])
            n_t = tanh(x_step * wx[2] + h_t * wh[2] + bx[2] + bh[2])
            o_t = sigmoid(x_step * wx[3] + h_t * wh[3] + bx[3] + bh[3])
            c_t = c_t * f_t + i_t * n_t
            h_t = o_t * tanh(c_t)

            # Calcolo dell'output del dense layer per il timestep corrente
            dense1_out = relu(np.dot(h_t, W_dense1.T) + b_dense1.T)  # Applicazione del primo layer fully connected
            outputs[i] = (np.dot(dense1_out, W_dense2.T) + b_dense2.squeeze()).squeeze()  # Applicazione del secondo layer fully connected
    return outputs

# Load the weights and data
Data_path = './Data/'
Weights_path = './Data/Weights/'

wx = np.load(os.path.join(Weights_path + "lstm_weight_ih_l0.npy"))
wh = np.load(os.path.join(Weights_path + "lstm_weight_hh_l0.npy"))
bx = np.expand_dims(np.load(os.path.join(Weights_path + "lstm_bias_ih_l0.npy")), axis=1)
bh = np.expand_dims(np.load(os.path.join(Weights_path + "lstm_bias_hh_l0.npy")), axis=1)

W_dense1 = np.load(os.path.join(Weights_path + "fc1_weight.npy"))
b_dense1 = np.load(os.path.join(Weights_path + "fc1_bias.npy"))
b_dense1 = np.expand_dims(b_dense1, axis=1)
W_dense2 = np.load(os.path.join(Weights_path + "fc2_weight.npy"))
b_dense2 = np.load(os.path.join(Weights_path + "fc2_bias.npy"))
b_dense2 = np.expand_dims(b_dense2, axis=1)

x_t = np.load(os.path.join(Data_path + "xtest.npy"))
y_t = np.load(os.path.join(Data_path + "ytest.npy"))

# Run the model
output = np.empty(len(x_t))
output = custom_lstm(x_t, wx, wh, bx, bh, W_dense1, b_dense1, W_dense2, b_dense2)

# Mean Squared Error calculation
from sklearn.metrics import mean_squared_error as mse

MSE = mse(y_t, output, squared=False)
print("\nThe MSE is {}.".format(MSE))

# Plot the results
import matplotlib.pyplot as plt

plt.figure()
plt.plot(y_t[:1000], label='Real measurements')
plt.plot(output[:1000], label='Predicted output')
plt.legend()
plt.suptitle('LSTM applied to test data')
plt.title('MSE = ' + str(MSE), fontsize=9)
plt.show()
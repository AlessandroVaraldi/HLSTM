import os
import struct
import numpy as np
import time

precision = 256

def sigm(x):
    return 1/(1+np.exp(-x))

def tanh(x):
    return np.tanh(x)

def relu(x): return np.maximum(0, x)

# Define the LSTM model
def lstm(x_t, wx, wh, bx, bh, W_dense1, b_dense1, W_dense2, b_dense2, output):
    for i in range(0,len(x_t[:,0,0])):   
        h_t = 0.0
        c_t = 0.0
        #if i == 0: 
        #    start = time.time()
        for j in range(0,len(x_t[0,:,0])):

            i_t = sigm(wx[0, 0] * x_t[i, j, 0] + wh[0, 0] * h_t + bx[0] + bh[0])
            f_t = sigm(wx[1, 0] * x_t[i, j, 0] + wh[1, 0] * h_t + bx[1] + bh[1])
            s_t = tanh(wx[2, 0] * x_t[i, j, 0] + wh[2, 0] * h_t + bx[2] + bh[2])
            o_t = sigm(wx[3, 0] * x_t[i, j, 0] + wh[3, 0] * h_t + bx[3] + bh[3])

            if i == 0: print(i_t, f_t, s_t, o_t)
            c_t = f_t * c_t + (i_t * s_t)
            h_t = o_t * tanh(c_t)
            if i == 0: print(h_t)

        output[i] = (np.dot(W_dense2,  relu(W_dense1*h_t + b_dense1)) + b_dense2).squeeze()

        #if i == 0:
        #    end = time.time()
        #    print("Time per iteration: ", end-start)

    return output

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
output = lstm(x_t, wx, wh, bx, bh, W_dense1, b_dense1, W_dense2, b_dense2, output)

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

for i in range(10):
    print(output[i])
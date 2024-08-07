import os
import struct
import numpy as np
import time

UPPER_BOUND = 6
LOWER_BOUND = UPPER_BOUND - 8
STEPS = 2**7

def sigmoid(x): 
    LUT = 1/(1+np.exp(-np.linspace(LOWER_BOUND, UPPER_BOUND, STEPS)))
    idx = (x - LOWER_BOUND) / ((UPPER_BOUND - LOWER_BOUND) / STEPS)
    return LUT[int(idx[0])]

def truesigm(x):
    return 1/(1+np.exp(-x))
     
def tanh(x): 
    LUT = np.tanh(np.linspace(LOWER_BOUND, UPPER_BOUND, STEPS))
    idx = (x - LOWER_BOUND) / ((UPPER_BOUND - LOWER_BOUND) / STEPS)
    return LUT[int(idx[0])]

def truetanh(x):
    return np.tanh(x)

def relu(x): return np.maximum(0, x)

# Define the LSTM model
def lstm(x_t, h_t, c_t, wx, wh, bx, bh, W_dense1, b_dense1, W_dense2, b_dense2, output):
    for i in range(0,len(x_t[:,0,0])):   
        #if i == 0: 
        #    start = time.time()
        for j in range(0,len(x_t[0,:,0])):
            f_t = truesigm(wx[0, 0] * x_t[i, j, 0] + wh[0, 0] * h_t + bx[0] + bh[0])
            i_t = truesigm(wx[1, 0] * x_t[i, j, 0] + wh[1, 0] * h_t + bx[1] + bh[1])
            c_hat_t = truetanh(wx[2, 0] * x_t[i, j, 0] + wh[2, 0] * h_t + bx[2] + bh[2])
            o_t = truesigm(wx[3, 0] * x_t[i, j, 0] + wh[3, 0] * h_t + bx[3] + bh[3])
            c_t = f_t * c_t + i_t * c_hat_t
            h_t = o_t * np.tanh(c_t)
            
        dense1_output = relu(W_dense1*h_t + b_dense1)
        dense2_output = np.dot(W_dense2, dense1_output) + b_dense2
        output = np.append(output, dense2_output)
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

h_t = 0.0
c_t = 0.0

x_t = np.load(os.path.join(Data_path + "xtest.npy"))
y_t = np.load(os.path.join(Data_path + "ytest.npy"))

# Run the model
output = np.array([])
output = lstm(x_t, h_t, c_t, wx, wh, bx, bh, W_dense1, b_dense1, W_dense2, b_dense2, output)

# Mean Squared Error calculation
from sklearn.metrics import mean_squared_error as mse

MSE = mse(y_t, output, squared=False)
print("\nThe MSE is {}.".format(MSE))

# Plot the results
import matplotlib.pyplot as plt

plt.figure()
plt.plot(y_t, label='Real measurements')
plt.plot(output, label='Predicted output')
plt.legend()
plt.suptitle('LSTM applied to test data')
plt.title('MSE = ' + str(MSE), fontsize=9)
plt.show()
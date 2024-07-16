import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
import matplotlib.pyplot as plt

# Funzioni di attivazione
sigm = torch.sigmoid
tanh = torch.tanh

# Caricamento dei pesi salvati
weights_dir = './Data/Weights'
wx = np.load(f'{weights_dir}/lstm_weight_ih_l0.npy')
wh = np.load(f'{weights_dir}/lstm_weight_hh_l0.npy')
bx = np.load(f'{weights_dir}/lstm_bias_ih_l0.npy')
bh = np.load(f'{weights_dir}/lstm_bias_hh_l0.npy')

# Conversione in tensori di PyTorch
wx = torch.tensor(wx, dtype=torch.float32)
wh = torch.tensor(wh, dtype=torch.float32)
bx = torch.tensor(bx, dtype=torch.float32)
bh = torch.tensor(bh, dtype=torch.float32)

fc_weights = np.load(f'{weights_dir}/fc_out_weight.npy')
fc_weights = torch.tensor(fc_weights, dtype=torch.float32)
fc_bias = np.load(f'{weights_dir}/fc_out_bias.npy')
fc_bias = torch.tensor(fc_bias, dtype=torch.float32)

# Esempio di input (sostituire con il proprio input x_t)
x_t = np.load('./Data/xtest.npy')
x_t = torch.tensor(x_t, dtype=torch.float32)

y_t = np.load('./Data/ytest.npy')
y_t = torch.tensor(y_t, dtype=torch.float32)

# Inizializzazione degli stati h_t e c_t
batch_size, seq_len, input_size = x_t.shape
hidden_size = wh.shape[1]  # Dimensione del hidden state
output_size = fc_weights.shape[0]  # Dimensione dell'output

h_t = torch.zeros((batch_size, hidden_size), dtype=torch.float32)
c_t = torch.zeros((batch_size, hidden_size), dtype=torch.float32)
out = torch.zeros((batch_size, output_size), dtype=torch.float32)

# Funzione LSTM
for i in range(batch_size):
    for j in range(seq_len):
        print(f'Batch {i+1}/{batch_size}, Step {j+1}/{seq_len}')
        #gates = (wx @ x_t[i, j] + bx) + (wh @ h_t[i] + bh)
        W = torch.cat((wx, wh), dim=1)
        b = bx + bh
        x_h_concat = torch.cat((x_t[i, j], h_t[i]))
        gates = W @ x_h_concat + b
        
        # Split delle concatenazioni delle matrici dei gate
        i_t = sigm(gates[:hidden_size])
        f_t = sigm(gates[hidden_size:hidden_size*2])
        s_t = tanh(gates[hidden_size*2:hidden_size*3])
        o_t = sigm(gates[hidden_size*3:])
        
        c_t[i] = f_t * c_t[i] + i_t * s_t
        h_t[i] = o_t * tanh(c_t[i])

    out[i] = fc_weights @ h_t[i] + fc_bias
    
# MSE
loss = F.mse_loss(out, y_t)
print(f'MSE: {loss.item()}')
    
# Plot dei risultati
fig, axs = plt.subplots(5, 1, figsize=(10, 20))

for k in range(5):
    axs[k].plot(y_t[-1000:, k].detach().numpy(), label='Actual')
    axs[k].plot(out[-1000:, k].detach().numpy(), label='Predicted')
    axs[k].set_title(f'Output Component {k+1}')
    axs[k].legend()

plt.tight_layout()
plt.show()
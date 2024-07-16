import torch
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from torch.utils.data import DataLoader, TensorDataset

model = torch.load('lstm.pth')

csv_path = './Data/jena_climate_2009_2016.csv'

df = pd.read_csv(csv_path)
df = df[5::6]
df.index = pd.to_datetime(df['Date Time'], format='%d.%m.%Y %H:%M:%S')
temp = df['T (degC)']

# Construct training data
def df_to_X_y(df, window_size=5):
  df_as_np = df.to_numpy()
  X = []
  y = []
  for i in range(len(df_as_np)-window_size):
    row = [[a] for a in df_as_np[i:i+window_size]]
    X.append(row)
    label = df_as_np[i+window_size]
    y.append(label)
  return np.array(X), np.array(y)

X, y = df_to_X_y(temp, 10)

# Split and normalize the data into training, validation, and test sets
X_train, y_train = X[:60000], y[:60000]
X_train_mean, y_train_mean = np.mean(X_train), np.mean(y_train)
X_train_std, y_train_std = np.std(X_train), np.std(y_train)
X_train = (X_train - X_train_mean) / X_train_std
y_train = (y_train - y_train_mean) / y_train_std

X_val, y_val = X[60000:65000], y[60000:65000]
X_val_mean, y_val_mean = np.mean(X_val), np.mean(y_val)
X_val_std, y_val_std = np.std(X_val), np.std(y_val)
X_val = (X_val - X_val_mean) / X_val_std
y_val = (y_val - y_val_mean) / y_val_std

X_test, y_test = X[65000:], y[65000:]
X_test_mean, y_test_mean = np.mean(X_test), np.mean(y_test)
X_test_std, y_test_std = np.std(X_test), np.std(y_test)
X_test = (X_test - X_test_mean) / X_test_std
y_test = (y_test - y_test_mean) / y_test_std

np.save('./Data/xtest.npy', X_test)
np.save('./Data/ytest.npy', y_test)

# Converti i dati in tensori PyTorch
X_train_t = torch.tensor(X_train, dtype=torch.float32)
y_train_t = torch.tensor(y_train, dtype=torch.float32)
X_val_t = torch.tensor(X_val, dtype=torch.float32)
y_val_t = torch.tensor(y_val, dtype=torch.float32)
X_test_t = torch.tensor(X_test, dtype=torch.float32)
y_test_t = torch.tensor(y_test, dtype=torch.float32)

# Crea DataLoader
train_data = TensorDataset(X_train_t, y_train_t)
val_data = TensorDataset(X_val_t, y_val_t)
test_data = TensorDataset(X_test_t, y_test_t)

train_loader = DataLoader(train_data, batch_size=64, shuffle=True)
val_loader = DataLoader(val_data, batch_size=64)
test_loader = DataLoader(test_data, batch_size=64)

model_int8 = torch.ao.quantization.quantize_dynamic(
    model,  # the original model
    {torch.nn.LSTM, torch.nn.Linear, torch.nn.ReLU, torch.nn.Linear},  # a set of layers to dynamically quantize
    dtype=torch.qint8)  # the target dtype for quantized weights

# Test del modello
test_predictions = model_int8(X_test_t).detach().numpy()

torch.save(model_int8.state_dict(), 'lstm_int8.pth')

with torch.no_grad():
    actuals = y_test_t.numpy()

# Calcolo e stampa del MSE
mse = np.mean((actuals - test_predictions)**2)
print("\nThe MSE is {}.".format(mse))

# Visualizzazione
plt.figure()
plt.plot(actuals[:1000])
plt.plot(test_predictions[:1000])
plt.suptitle('LSTM applied to test data')
plt.title('MSE = ' + str(mse), fontsize=9)
plt.show()

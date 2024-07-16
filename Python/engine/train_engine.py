import os
import numpy as np
import pandas as pd
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import matplotlib.pyplot as plt

# Parameters
seed = 5
steps = 10
units = 1
epochs = 25
learning_rate = 0.0001
batch_size = 64

# Set seed for reproducibility
np.random.seed(seed)
torch.manual_seed(seed)

# Import dataset
csv_path = 'C:/Users/aleva/Downloads/measures.csv'

df = pd.read_csv(csv_path)
df = df[5::6]
#df.index = pd.to_datetime(df['Date Time'], format='%d.%m.%Y %H:%M:%S')
temp = df['pm']

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

X, y = df_to_X_y(temp, steps)

# Normalize the data
X_mean = np.mean(X)
X_std = np.std(X)
X = (X - X_mean) / X_std
y_mean = np.mean(y)
y_std = np.std(y)
y = (y - y_mean) / y_std

# Split the data into training, validation, and test sets
X_train, y_train = X[:int(np.floor(len(X)*0.8))], y[:int(np.floor(len(y)*0.8))]
X_val, y_val = X[int(np.floor(len(X)*0.8)):int(np.floor(len(X)*0.9))], y[int(np.floor(len(y)*0.8)):int(np.floor(len(y)*0.9))]
X_test, y_test = X[int(np.floor(len(X)*0.9)):], y[int(np.floor(len(y)*0.9)):]

np.save('xtest.npy', X_test)
np.save('ytest.npy', y_test)

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

train_loader = DataLoader(train_data, batch_size=batch_size, shuffle=True)
val_loader = DataLoader(val_data, batch_size=batch_size)
test_loader = DataLoader(test_data, batch_size=batch_size)

# Definizione del modello LSTM in PyTorch
class LSTMModel(nn.Module):
    def __init__(self, input_dim, hidden_dim, output_dim):
        super(LSTMModel, self).__init__()
        self.lstm = nn.LSTM(input_dim, hidden_dim, batch_first=True)
        self.fc1 = nn.Linear(hidden_dim, 4)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(4, output_dim)

    def forward(self, x):
        _, (h_n, _) = self.lstm(x)
        x = h_n[-1]
        x = self.fc1(x)
        x = self.relu(x)
        x = self.fc2(x)
        return x

model = LSTMModel(1, units, 1)

# Definizione dell'ottimizzatore e della funzione di perdita
optimizer = optim.Adam(model.parameters(), lr=learning_rate)
criterion = nn.MSELoss()

# Ciclo di allenamento
for epoch in range(epochs):
    print("Epoch", epoch+1, "of", epochs)
    model.train()
    for X_batch, y_batch in train_loader:
        optimizer.zero_grad()
        y_pred = model(X_batch).squeeze()
        loss = criterion(y_pred, y_batch)
        loss.backward()
        optimizer.step()

# Salvataggio del modello
torch.save(model.state_dict(), 'lstm.pth')

# Test del modello
model.eval()
with torch.no_grad():
    test_predictions = []
    actuals = []
    for X_batch, y_batch in test_loader:
        y_test_pred = model(X_batch).squeeze()
        test_predictions.append(y_test_pred.numpy())
        actuals.append(y_batch.numpy())
test_predictions = np.concatenate(test_predictions)
actuals = np.concatenate(actuals)

weights_numpy = {name: param.cpu().numpy() for name, param in model.state_dict().items()}
for name, array in weights_numpy.items():
    # 'name' può contenere caratteri non validi per i nomi di file, quindi potresti doverlo modificare
    safe_name = name.replace('.', '_')
    np.save(f'./Data/Weights/{safe_name}.npy', array)

# Calcolo e stampa del MSE
mse = np.mean((actuals - test_predictions)**2)
print("\nThe MSE is {}.".format(mse))

# Visualizzazione
plt.figure()
plt.plot(actuals)
plt.plot(test_predictions)
plt.suptitle('LSTM applied to test data')
plt.title('MSE = ' + str(mse), fontsize=9)
plt.show()


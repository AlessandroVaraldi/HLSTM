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
epochs = 100
threshold = 0.05
learning_rate = 0.0001
batch_size = 64  

# Set seed for reproducibility
np.random.seed(seed)
torch.manual_seed(seed)

# Import dataset
csv_path = './Data/jena_climate_2009_2016.csv'

df = pd.read_csv(csv_path)
df = df[5::6]
df.index = pd.to_datetime(df['Date Time'], format='%d.%m.%Y %H:%M:%S')
temp = df['T (degC)']

# Construct training data
def df_to_X_y(df, window_size=5):
    df_as_np = df.to_numpy()
    X, y = [], []
    for i in range(len(df_as_np)-window_size):
        X.append([[a] for a in df_as_np[i:i+window_size]])
        y.append(df_as_np[i+window_size])
    return np.array(X), np.array(y)

X, y = df_to_X_y(temp, steps)

# Split and normalize the data
def normalize_data(X, y):
    mean_X, std_X = np.mean(X), np.std(X)
    mean_y, std_y = np.mean(y), np.std(y)
    X = (X - mean_X) / std_X
    y = (y - mean_y) / std_y
    return X, y

X_train, y_train = normalize_data(X[:40000], y[:40000])
X_val, y_val = normalize_data(X[40000:55000], y[40000:55000])
X_test, y_test = normalize_data(X[55000:], y[55000:])

np.save('./Data/xtest.npy', X_test)
np.save('./Data/ytest.npy', y_test)

print(X_test[:10,:,0])
exit()
# Converti i dati in tensori PyTorch
def to_tensor(X, y):
    return torch.tensor(X, dtype=torch.float32), torch.tensor(y, dtype=torch.float32)

X_train_t, y_train_t = to_tensor(X_train, y_train)
X_val_t, y_val_t = to_tensor(X_val, y_val)
X_test_t, y_test_t = to_tensor(X_test, y_test)

# Crea DataLoader
train_loader = DataLoader(TensorDataset(X_train_t, y_train_t), batch_size=batch_size, shuffle=True)
val_loader = DataLoader(TensorDataset(X_val_t, y_val_t), batch_size=batch_size)
test_loader = DataLoader(TensorDataset(X_test_t, y_test_t), batch_size=batch_size)

# Definizione del modello LSTM in PyTorch
class LSTMModel(nn.Module):
    def __init__(self, input_dim, hidden_dim, output_dim):
        super(LSTMModel, self).__init__()
        self.lstm = nn.LSTM(input_dim, hidden_dim, batch_first=True)
        self.fc1 = nn.Linear(hidden_dim, output_dim)

    def forward(self, x):
        _, (h_n, _) = self.lstm(x)
        return self.fc1(h_n[-1])

model = LSTMModel(1, units, 1)

# Definizione dell'ottimizzatore e della funzione di perdita
optimizer = optim.Adam(model.parameters(), lr=learning_rate)
criterion = nn.MSELoss()

train_losses, val_losses = [], []

plt.ion()
fig, ax = plt.subplots()

# Ciclo di allenamento
for epoch in range(epochs):
    print("Epoch", epoch+1, "of", epochs)
    model.train()
    train_loss = 0
    for X_batch, y_batch in train_loader:
        optimizer.zero_grad()
        y_pred = model(X_batch).squeeze()
        loss = criterion(y_pred, y_batch)
        loss.backward()
        optimizer.step()
        train_loss += loss.item()
    train_loss /= len(train_loader)
    train_losses.append(train_loss)
    
    model.eval()
    val_loss = 0
    with torch.no_grad():
        for X_batch, y_batch in val_loader:
            y_pred = model(X_batch).squeeze()
            val_loss += criterion(y_pred, y_batch).item()
    val_loss /= len(val_loader)
    val_losses.append(val_loss)
    
    ax.clear()
    ax.plot(train_losses, label='Training Loss')
    ax.plot(val_losses, label='Validation Loss')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Loss')
    ax.legend()
    plt.draw()
    plt.pause(0.01)

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

# Salvataggio dei pesi
os.makedirs('./Data/Weights', exist_ok=True)
for name, param in model.state_dict().items():
    np.save(f'./Data/Weights/{name.replace(".", "_")}.npy', param.cpu().numpy())

# Calcolo e stampa del MSE
mse = np.mean((actuals - test_predictions)**2)
print("\nThe MSE is {}.".format(mse))

# Visualizzazione
plt.ioff()
plt.figure()
plt.plot(actuals[:], label='Actual')
plt.plot(test_predictions[:], label='Predicted')
plt.title(f'LSTM applied to test data\nMSE = {mse}', fontsize=9)
plt.legend()
plt.show()

print(test_predictions[:10])
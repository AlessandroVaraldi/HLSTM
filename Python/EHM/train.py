import os
import time
import shutil
import numpy as np
import pandas as pd

np.set_printoptions(threshold=np.inf)

import torch
import torch.onnx
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import matplotlib.pyplot as plt

# Parameters
num_samples = 100000
steps = 10
epochs = 1000
patience = 50
threshold = 0.01
units = 2
LSTM_layers = 1
fc_layers = 1
learning_rate = 0.0001
batch_size = 64
seed = 5

# Set seed for reproducibility
np.random.seed(seed)
torch.manual_seed(seed)

# Data generation functions
def generate_requested_torque(time_samples):
    return 50 + 10 * np.sin(2 * np.pi * time_samples / 200 + np.random.randn(num_samples)) + 2 * np.sin(2 * np.pi * time_samples / 20) + 2 * np.random.randn(num_samples)

def generate_measured_torque(requested_torque):
    return requested_torque + 2 * np.random.randn(num_samples)

def generate_ambient_temperature(time):
    return 25 + 5 * np.sin(2 * np.pi * time / 365 + np.random.randn(num_samples)) + 2 * np.random.randn(num_samples)

def generate_coolant_temperature(ambient_temp, measured_torque):
    coolant_temp = ambient_temp + 0.5 * measured_torque / 50 + 5 * np.random.randn(num_samples)
    # Introduzione dell'anomalia tra 98500 e 99500
    for i in range(98250, 99250):
        anomaly = np.sin((i - 98250) * np.pi / (99250 - 98250)) * 20  # Anomalia sinusoidale
        coolant_temp[i] += anomaly
    return coolant_temp

def generate_exhaust_temperature(measured_torque, fuel_flow):
    return 200 + 0.8 * measured_torque + 0.2 * fuel_flow + 10 * np.random.randn(num_samples)

def generate_fuel_flow(measured_torque):
    return 10 + 0.1 * measured_torque + 1 * np.random.randn(num_samples)

def create_dataframe(num_samples):
    time_samples = np.arange(num_samples)
    requested_torque = generate_requested_torque(time_samples)
    measured_torque = generate_measured_torque(requested_torque)
    ambient_temperature = generate_ambient_temperature(time_samples)
    coolant_temperature = generate_coolant_temperature(ambient_temperature, measured_torque)
    fuel_flow = generate_fuel_flow(measured_torque)
    exhaust_temperature = generate_exhaust_temperature(measured_torque, fuel_flow)

    data = np.vstack((requested_torque, measured_torque, ambient_temperature, coolant_temperature, exhaust_temperature, fuel_flow)).T
    return pd.DataFrame(data, columns=['Requested Torque', 'Measured Torque', 'Ambient Temperature', 'Coolant Temperature', 'Exhaust Temperature', 'Fuel Flow'])

def df_to_X_y(df, window_size=5):
    df_as_np = df.to_numpy()
    X, y = [], []
    for i in range(len(df_as_np)-window_size):
        X.append(df_as_np[i:i+window_size])
        y.append(df_as_np[i+window_size, 1:])
    return np.array(X), np.array(y)

def normalize_data(X, y):
    mean_X, std_X = np.mean(X, axis=0), np.std(X, axis=0)
    mean_y, std_y = np.mean(y, axis=0), np.std(y, axis=0)
    X = (X - mean_X) / std_X
    y = (y - mean_y) / std_y
    return X, y, mean_X, std_X, mean_y, std_y

def to_tensor(X, y):
    return torch.tensor(X, dtype=torch.float32), torch.tensor(y, dtype=torch.float32)

class LSTMModel(nn.Module):
    def __init__(self, input_dim, hidden_dim, output_dim, lstm_layers=1, fc_layers=1):
        super(LSTMModel, self).__init__()
        self.lstm = nn.LSTM(input_dim, hidden_dim, num_layers=lstm_layers, batch_first=True)
        self.fc_layers = nn.ModuleList([nn.Linear(hidden_dim, hidden_dim) for _ in range(fc_layers-1)])
        self.relu = nn.ReLU()
        self.fc_out = nn.Linear(hidden_dim, output_dim)
        
    def forward(self, x):
        _, (h_n, _) = self.lstm(x)
        h_n = h_n[-1]
        for fc in self.fc_layers:
            h_n = self.relu(fc(h_n))
        return self.fc_out(h_n)

def train_model(model, train_loader, val_loader, optimizer, criterion, epochs, patience, threshold):
    train_losses, val_losses = [], []
    best_val_loss = float('inf')
    epochs_without_improvement = 0

    plt.ion()
    fig, ax = plt.subplots()

    start_time = time.time()

    for epoch in range(epochs):
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
                y_pred = model(X_batch)
                val_loss += criterion(y_pred, y_batch).item()
        val_loss /= len(val_loader)
        val_losses.append(val_loss)
        
        print(f"Epoch {epoch+1}/{epochs}")
        print(f"  Training Loss: {train_loss:.4f}  Validation Loss: {val_loss:.4f}")

        ax.clear()
        ax.plot(train_losses, label='Training Loss')
        ax.plot(val_losses, label='Validation Loss')
        ax.set_xlabel('Epoch')
        ax.set_ylabel('Loss')
        ax.legend()
        plt.draw()
        plt.pause(0.01)

        if val_loss < best_val_loss - threshold:
            best_val_loss = val_loss
            epochs_without_improvement = 0
            torch.save(model.state_dict(), 'best_lstm.pth')
            print("  Lowest validation loss achieved!")
        else:
            epochs_without_improvement += 1
            print(f"  Lowest validation loss achieved {epochs_without_improvement} epochs ago.")

        print("*" * 75)
        print("\n")

        if epochs_without_improvement >= patience:
            print(f"No improvement for {patience} epochs. Training stopped.")
            print("*" * 75)
            print("\n")
            break

    plt.ioff()
    plt.close()

    training_time = time.time() - start_time
    print(f"Training completed in {training_time:.2f} seconds")

def test_model(model, X_test_t, y_test_t, mean_y_test, std_y_test, anomaly_th):
    model.load_state_dict(torch.load('best_lstm.pth'))
    model.eval()
    with torch.no_grad():
        y_test_pred = model(X_test_t).squeeze()
        test_predictions = y_test_pred.cpu().numpy()
        actuals = y_test_t.cpu().numpy()
        anomalies = np.abs(test_predictions - actuals)

    mse = np.mean((actuals - test_predictions)**2)
    print(f"\nThe MSE is {mse}.")

    actuals = actuals * std_y_test + mean_y_test
    test_predictions = test_predictions * std_y_test + mean_y_test

    fig, axs = plt.subplots(5, 1, figsize=(12, 24))
    result_titles = ['Measured Torque', 'Ambient Temperature', 'Coolant Temperature', 'Exhaust Temperature', 'Fuel Flow']

    for i, title in enumerate(result_titles):
        axs[i].plot(actuals[-5000:, i], label='Actual')
        axs[i].plot(test_predictions[-5000:, i], label='Predicted')
        axs[i].set_title(title)
        axs[i].legend()

    plt.tight_layout()
    plt.show()

    # Color anomalies based on growth rate threshold
    
    fig, axs = plt.subplots(5, 1, figsize=(10, 15))  # Creare una figura con 5 subplot

    for idx, (anomaly, th) in enumerate(zip(anomalies.T, anomaly_th.T)):
        i = 0
        colors = []
        for x in anomaly:
            if x > th:
                if i < 10:
                    i += 1
            else:
                if i > 0:
                    i -= 1
            if i == 10:
                colors.append('red')
            else:
                colors.append('blue')
        axs[idx].scatter(range(len(anomaly[-5000:])), anomaly[-5000:], c=colors[-5000:], s=2)
        axs[idx].set_xlabel('Sample')
        axs[idx].set_ylabel('Anomaly Value')

    plt.tight_layout()
    plt.show()

def main():
    df = create_dataframe(num_samples)
    X, y = df_to_X_y(df, steps)

    X_train, y_train = X[:50000], y[:50000]
    X_val, y_val = X[50000:55000], y[50000:55000]
    X_test, y_test = X[55000:], y[55000:]

    X_train, y_train, mean_X_train, std_X_train, mean_y_train, std_y_train = normalize_data(X_train, y_train)
    X_val, y_val, mean_X_val, std_X_val, mean_y_val, std_y_val = normalize_data(X_val, y_val)
    X_test, y_test, mean_X_test, std_X_test, mean_y_test, std_y_test = normalize_data(X_test, y_test)

    X_val += 0.1 * np.random.randn(*X_val.shape)
    y_val += 0.1 * np.random.randn(*y_val.shape)
    X_test += 0.1 * np.random.randn(*X_test.shape)
    y_test += 0.1 * np.random.randn(*y_test.shape)

    np.save('./Data/xtest.npy', X_test)
    np.save('./Data/ytest.npy', y_test)

    X_train_t, y_train_t = to_tensor(X_train, y_train)
    X_val_t, y_val_t = to_tensor(X_val, y_val)
    X_test_t, y_test_t = to_tensor(X_test, y_test)

    input_dim = X_train.shape[2]
    output_dim = y_train.shape[1]
    model = LSTMModel(input_dim, units, output_dim, LSTM_layers, fc_layers)

    optimizer = optim.Adam(model.parameters(), lr=learning_rate)
    criterion = nn.MSELoss()

    train_loader = DataLoader(TensorDataset(X_train_t, y_train_t), batch_size=batch_size, shuffle=True)
    val_loader = DataLoader(TensorDataset(X_val_t, y_val_t), batch_size=batch_size)

    train_model(model, train_loader, val_loader, optimizer, criterion, epochs, patience, threshold)
    anomaly_th = np.std(y_test, axis=0)
    test_model(model, X_test_t, y_test_t, mean_y_test, std_y_test, anomaly_th)

    # Save model weights
    weights_dir = './Data/Weights'
    if os.path.exists(weights_dir):
        shutil.rmtree(weights_dir)
    os.makedirs(weights_dir, exist_ok=True)

    for name, param in model.state_dict().items():
        np.save(f'./Data/Weights/{name.replace(".", "_")}.npy', param.cpu().numpy())

    torch.onnx.export(model, X_test_t, "model.onnx")

if __name__ == "__main__":
    main()

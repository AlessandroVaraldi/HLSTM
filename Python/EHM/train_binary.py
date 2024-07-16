import os
import time
import shutil
import numpy as np
import pandas as pd
import torch
import torch.onnx
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import matplotlib.pyplot as plt

# Parametri
steps = 10
epochs = 1000
patience = 50
threshold = 0.0001
units = 2
LSTM_layers = 1
fc_layers = 1
learning_rate = 0.0001
batch_size = 64
seed = 5

# Set seed for reproducibility
np.random.seed(seed)
torch.manual_seed(seed)

# Caricamento del nuovo dataset
def load_dataset(filepath):
    df = pd.read_csv(filepath)
    return df

# Preparazione dei dati per la classificazione binaria
def df_to_X_y_binary(df, window_size=10):
    df_as_np = df.to_numpy()
    X, y = [], []
    for i in range(len(df_as_np) - window_size):
        X.append(df_as_np[i:i + window_size, :-1])
        y.append(df_as_np[i + window_size - 1, -1])
    return np.array(X), np.array(y)

def normalize_data(X):
    mean_X, std_X = np.mean(X, axis=(0, 1)), np.std(X, axis=(0, 1))
    X = (X - mean_X) / std_X
    return X, mean_X, std_X

def to_tensor(X, y):
    return torch.tensor(X, dtype=torch.float32), torch.tensor(y, dtype=torch.float32)

class LSTMModelBinary(nn.Module):
    def __init__(self, input_dim, hidden_dim, output_dim, lstm_layers=1, fc_layers=1):
        super(LSTMModelBinary, self).__init__()
        self.lstm = nn.LSTM(input_dim, hidden_dim, num_layers=lstm_layers, batch_first=True)
        self.fc_layers = nn.ModuleList([nn.Linear(hidden_dim, hidden_dim) for _ in range(fc_layers-1)])
        self.relu = nn.ReLU()
        self.fc_out = nn.Linear(hidden_dim, output_dim)
        self.sigmoid = nn.Sigmoid()
        
    def forward(self, x):
        _, (h_n, _) = self.lstm(x)
        h_n = h_n[-1]
        for fc in self.fc_layers:
            h_n = self.relu(fc(h_n))
        return self.sigmoid(self.fc_out(h_n))

def train_model_binary(model, train_loader, val_loader, optimizer, criterion, epochs, patience, threshold):
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
                val_loss += criterion(y_pred, y_batch.unsqueeze(1)).item()
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

from sklearn.metrics import roc_curve, auc, confusion_matrix, classification_report

def plot_actual_vs_predicted(y_test, y_pred):
    fig, ax = plt.subplots()
    ax.plot(y_test[:100], label='Actual', alpha=0.6)
    ax.plot(y_pred[:100], label='Predicted', alpha=0.6)
    ax.set_title('Actual vs Predicted')
    ax.legend()
    plt.show()

def plot_roc_curve(y_test, y_pred):
    fpr, tpr, _ = roc_curve(y_test, y_pred)
    roc_auc = auc(fpr, tpr)
    plt.figure()
    plt.plot(fpr, tpr, color='darkorange', lw=2, label=f'ROC curve (area = {roc_auc:.2f})')
    plt.plot([0, 1], [0, 1], color='navy', lw=2, linestyle='--')
    plt.xlim([0.0, 1.0])
    plt.ylim([0.0, 1.05])
    plt.xlabel('False Positive Rate')
    plt.ylabel('True Positive Rate')
    plt.title('Receiver Operating Characteristic')
    plt.legend(loc='lower right')
    plt.show()

def print_classification_metrics(y_test, y_pred):
    y_pred_rounded = np.round(y_pred)
    print(confusion_matrix(y_test, y_pred_rounded))
    print(classification_report(y_test, y_pred_rounded))

def test_model_binary(model, X_test_t, y_test_t):
    model.load_state_dict(torch.load('best_lstm.pth'))
    model.eval()
    with torch.no_grad():
        y_test_pred = model(X_test_t).squeeze()
        test_predictions = y_test_pred.cpu().numpy()
        actuals = y_test_t.cpu().numpy()

    # Utilizzare una soglia di 0.5 per l'attivazione binaria
    binary_predictions = (test_predictions >= 0.5).astype(int)

    accuracy = (binary_predictions == actuals).mean()
    print(f"\nThe accuracy is {accuracy:.4f}.")

    plot_actual_vs_predicted(actuals, binary_predictions)
    plot_roc_curve(actuals, binary_predictions)
    print_classification_metrics(actuals, binary_predictions)


def main():
    filepath = '/home/alessandro/Documents/engine_data.csv'
    df = load_dataset(filepath)
    X, y = df_to_X_y_binary(df, steps)

    X_train, y_train = X[:-9525], y[:-9525]
    X_val, y_val = X[-9525:-5000], y[-9525:-5000]
    X_test, y_test = X[-5000:], y[-5000:]

    X_train, mean_X_train, std_X_train = normalize_data(X_train)
    X_val, mean_X_val, std_X_val = normalize_data(X_val)
    X_test, mean_X_test, std_X_test = normalize_data(X_test)

    np.save('./Data/xtest.npy', X_test)
    np.save('./Data/ytest.npy', y_test)

    X_train_t, y_train_t = to_tensor(X_train, y_train)
    X_val_t, y_val_t = to_tensor(X_val, y_val)
    X_test_t, y_test_t = to_tensor(X_test, y_test)

    input_dim = X_train.shape[2]
    output_dim = 1  # Per la classificazione binaria
    model = LSTMModelBinary(input_dim, units, output_dim, LSTM_layers, fc_layers)

    optimizer = optim.Adam(model.parameters(), lr=learning_rate)
    criterion = nn.BCELoss()

    train_loader = DataLoader(TensorDataset(X_train_t, y_train_t), batch_size=batch_size, shuffle=True)
    val_loader = DataLoader(TensorDataset(X_val_t, y_val_t), batch_size=batch_size)

    train_model_binary(model, train_loader, val_loader, optimizer, criterion, epochs, patience, threshold)
    test_model_binary(model, X_test_t, y_test_t)

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
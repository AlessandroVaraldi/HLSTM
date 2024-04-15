import struct

def hex_to_float(hex_str):
    """
    Converte una stringa esadecimale in un valore float.
    """
    # Converti la stringa esadecimale in un intero, poi in bytes, e infine in float
    return struct.unpack('!f', bytes.fromhex(hex_str))[0]

def convert_file(input_filename, output_filename):
    """
    Legge i valori esadecimali da un file, li converte in float e scrive i risultati in un nuovo file.
    """
    with open(input_filename, 'r') as file:
        hex_values = file.readlines()

    # Rimuovi eventuali spazi bianchi e converti ogni valore
    float_values = [hex_to_float(value.strip()) for value in hex_values]

    with open(output_filename, 'w') as file:
        for value in float_values:
            file.write(f"{value}\n")

# Usare la funzione convert_file con i nomi dei file desiderati
convert_file('output_data.txt', 'output.txt')


import numpy as np
y = np.load("ytest.npy")
for value in y[:100]:
    print(value)
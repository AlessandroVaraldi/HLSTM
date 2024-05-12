import struct

# Funzione per convertire singoli valori da esadecimale a decimale
def hex_to_float(hex_value):
    """Converte un valore esadecimale in floating point decimale (32-bit)."""
    # Interpreta il valore esadecimale come unsigned int a 32-bit
    int_value = int(hex_value, 16)
    # Converte l'intero in un float a 32-bit
    return struct.unpack('!f', struct.pack('!I', int_value))[0]

# Funzione per convertire una lista di valori
def convert_hex_file_to_decimal(file_path):
    """Converte un file di valori floating-point esadecimali in decimali."""
    with open(file_path, 'r') as file:
        # Leggi il file, rimuovendo eventuali spazi o righe vuote
        hex_values = [line.strip() for line in file.readlines() if line.strip()]
        # Converte ciascun valore esadecimale in float decimale
        decimal_values = [hex_to_float(value) for value in hex_values]
    return decimal_values

# Esempio d'uso: fornire il percorso del file contenente i valori esadecimali
file_path = 'output_data.txt'
decimal_values = convert_hex_file_to_decimal(file_path)

# Stampa i valori decimali ottenuti
for value in decimal_values:
    print(value)
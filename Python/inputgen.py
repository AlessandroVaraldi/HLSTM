import numpy as np
import struct

def float_to_hex(f):
    # Converte un singolo float in una stringa esadecimale di 32 bit
    return format(struct.unpack('<I', struct.pack('<f', f))[0], '08x')

def save_to_mif(data, filename="input.mif"):
    with open(filename, 'w') as file:
        file.write("DEPTH = 1024;\n")
        file.write("WIDTH = 32;\n")  # single precision float è 32 bit
        file.write("ADDRESS_RADIX = DEC;\n")
        file.write("DATA_RADIX = HEX;\n")
        file.write("CONTENT\n")
        file.write("BEGIN\n")
        
        # Scrive solo i primi 1024 valori della colonna x
        for i in range(min(1024, len(data))):
            # Converte il valore float in esadecimale
            hex_value = float_to_hex(data[i])
            file.write(f"{i} : {hex_value};\n")
        
        file.write("END;\n")

# Usa solo i valori della prima colonna della dimensione x dell'array
x = np.load("./Data/xtest.npy")

# Salva i primi 1024 valori in un file .mif
save_to_mif(x[:,0,0])
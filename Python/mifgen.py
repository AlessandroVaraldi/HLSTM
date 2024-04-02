import numpy as np
import struct

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def mifgen(minvalue,steps):
    x_values = np.linspace(minvalue,-minvalue,steps)

    sigm_values = sigmoid(x_values)
    tanh_values = np.tanh(x_values)

    with open("sigm_values.mif", "w") as file:
        file.write("DEPTH = 256;\n")
        file.write("WIDTH = 32;\n")
        file.write("ADDRESS_RADIX = HEX;\n")
        file.write("DATA_RADIX = DEC;\n")
        file.write("CONTENT\n")
        file.write("BEGIN\n")
        
        for address, value in enumerate(sigm_values):
            hex_value = struct.pack('>f', value).hex().upper()
            file.write(f"{address:02X} : {hex_value};\n")
        
        file.write("END;\n")

    with open("tanh_values.mif", "w") as file:
        file.write("DEPTH = 256;\n")
        file.write("WIDTH = 32;\n")
        file.write("ADDRESS_RADIX = HEX;\n")
        file.write("DATA_RADIX = DEC;\n")
        file.write("CONTENT\n")
        file.write("BEGIN\n")
        
        for address, value in enumerate(tanh_values):
            hex_value = struct.pack('>f', value).hex().upper()
            file.write(f"{address:02X} : {hex_value};\n")
        
        file.write("END;\n")

    print("File generati con successo.")

mifgen(-8,256)
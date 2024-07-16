import numpy as np
import struct

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def mifgen(value,steps):
    x_values = np.linspace(0,value-value/steps,steps)
    print(x_values.shape)
    print(x_values[129])

    sigm_values = sigmoid(x_values)
    tanh_values = np.tanh(x_values)
    print(tanh_values[129])

    with open("sigm_values.mif", "w") as file:
        file.write("DEPTH = 256;\n")
        file.write("WIDTH = 32;\n")
        file.write("ADDRESS_RADIX = HEX;\n")
        file.write("DATA_RADIX = HEX;\n")
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
        file.write("DATA_RADIX = HEX;\n")
        file.write("CONTENT\n")
        file.write("BEGIN\n")
        
        for address, value in enumerate(tanh_values):
            hex_value = struct.pack('>f', value).hex().upper()
            file.write(f"{address:02X} : {hex_value};\n")
        
        file.write("END;\n")

    print("File generati con successo.")

mifgen(4,256)
import numpy as np

# Creazione di un esempio di numpy array float32 di dimensione [5081,10,1]
input_array = np.load("xtest.npy")

# Estrazione dei primi 100x10 valori
extracted_values = input_array[:100].reshape(-1)

# Creazione del contenuto del file .mif
mif_content = "DEPTH = 1000;\nWIDTH = 32;\nADDRESS_RADIX = HEX;\nDATA_RADIX = HEX;\nCONTENT\nBEGIN\n\n"
mif_content += "\n".join([f"{i:03X} : {np.float32(val).view(np.int32):08X};" for i, val in enumerate(extracted_values)])
mif_content += "\n\nEND;"

# Salvataggio del file .mif
file_path = "input.mif"
with open(file_path, "w") as mif_file:
    mif_file.write(mif_content)

import numpy as np

def float_to_fixed_point(numbers):
    # Calcola il fattore di scala per 13 bit frazionari
    scale_factor = 2 ** 13
    # Applica il fattore di scala e converti in intero
    fixed_point_numbers = np.round(numbers * scale_factor).astype(int)
    
    # Conversione in formato fixed point con 1 bit segno, 2 bit parte intera, 13 bit frazionaria
    fixed_point_16bit = np.zeros_like(fixed_point_numbers, dtype=np.int16)
    for i, num in enumerate(fixed_point_numbers):
        # Applicazione del formato fixed point: 
        # Primo bit per il segno, prossimi due per la parte intera, restanti per la frazione
        sign = 0
        if num < 0:
            sign = 1
            num = -num  # Considera il valore assoluto per il calcolo dei bit
        # Isolamento dei bit per la parte intera e frazionaria
        int_part = (num >> 13) & 0x03  # Isola solo 2 bit
        frac_part = num & 0x1FFF       # Isola 13 bit frazionari
        
        if sign:
            # Calcola il complemento a due per la conversione negativa
            total = (1 << 15) | (int_part << 13) | frac_part  # Costruisce il numero
            total = -((~total + 1) & 0xFFFF)  # Complemento a due per negativi
        else:
            total = (int_part << 13) | frac_part
        
        fixed_point_16bit[i] = total
    
    return fixed_point_16bit


def write_mif_file(filename, data, width=16, depth=None):
    if depth is None:
        depth = len(data)
    
    # Intestazione del file MIF
    header = f"DEPTH = {depth};\nWIDTH = {width};\nADDRESS_RADIX = HEX;\nDATA_RADIX = BIN;\nCONTENT\nBEGIN\n"
    with open(filename, "w") as file:
        file.write(header)
        
        # Scrive i dati convertiti in binario
        for i in range(depth):
            # Formatta l'indirizzo e il dato
            bin_value = format(data[i] & 0xffff, '016b')  # Maschera per mantenere solo 16 bit
            file.write(f"{i:04X} : {bin_value};\n")
        
        file.write("END;\n")

def main(file_path, n):
    # Carica l'array da un file .npy
    array = np.load(file_path)
    
    # Prende i primi n numeri della prima dimensione dell'array
    selected_data = array[:n,0,0]
    
    # Converti i numeri in formato fixed point
    fixed_point_data = float_to_fixed_point(selected_data)
    
    # Scrivi i dati nel file .mif
    write_mif_file("input.mif", fixed_point_data)

# Esempio di uso dello script
if __name__ == "__main__":
    file_path = "xtest.npy"  # Inserisci qui il percorso al tuo file .npy
    n = 1024  # Numero di elementi da utilizzare
    main(file_path, n)

# Correzione con attenzione alla conversione corretta dei valori negativi in float32 e rappresentazione esadecimale



# Percorso del file di output definitivamente corretto

final_corrected_output_file_path = '/mnt/data/final_initialized_memory_first_dimension.mif'



with open("input.mif", 'w') as file:

    # Intestazione del file .mif

    file.write("DEPTH = 1024;\n")

    file.write("WIDTH = 32;\n")  # 32 bit per il formato float32 secondo lo standard IEEE 754

    file.write("ADDRESS_RADIX = HEX;\n")

    file.write("DATA_RADIX = HEX;\n")

    file.write("CONTENT\n")

    file.write("BEGIN\n")

    

    # Scrittura dei dati in formato esadecimale secondo IEEE 754, con attenzione ai valori negativi

    for address, value in enumerate(first_dimension_data):

        # Converti il valore float32 secondo lo standard IEEE 754, inclusa la gestione dei valori negativi

        hex_value = format(np.float32(value).view(np.uint32), '08X')

        file.write(f"{address:03X} : {hex_value};\n")

    

    # Chiusura del contenuto del file

    file.write("END;\n")



# Conferma del percorso del file di output corretto

final_corrected_output_file_path
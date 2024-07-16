import numpy as np
import struct

def float_to_hex(f):
    """ Convert a floating point number to its hexadecimal representation. """
    # Convert the floating point number to a 4-byte binary representation
    packed = struct.pack('!f', f)  # Use big-endian (network order) for consistent endianness
    # Convert the binary data to a hexadecimal string
    return ''.join(f"{byte:02x}" for byte in packed)

def generate_mif(filename, data):
    """ Generate a .mif file from a list of floating point numbers. """
    with open(filename, 'w') as f:
        f.write("DEPTH = 1024;\n")
        f.write("WIDTH = 32;\n")
        f.write("ADDRESS_RADIX = HEX;\n")
        f.write("DATA_RADIX = HEX;\n")
        f.write("CONTENT\n")
        f.write("BEGIN\n")
        
        # Write each floating point number as a hexadecimal value
        for i, num in enumerate(data):
            hex_value = float_to_hex(num)
            f.write(f"{i:03x} : {hex_value};\n")
        
        f.write("END;\n")

def main():
    # Load the array
    xtest = np.load('xtest.npy')
    
    # Select the first 1024 elements
    selected_data = xtest[:1024,0,0]
    
    # Ensure data is in single precision floating point format
    selected_data = selected_data.astype(np.float32)
    
    # Generate the .mif file
    generate_mif('output.mif', selected_data)

if __name__ == "__main__":
    main()
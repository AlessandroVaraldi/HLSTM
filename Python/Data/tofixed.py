import numpy as np
import os

def convert_to_fixed_point(array, fractional_bits=13):
    """Convert float array to fixed point representation Q2.13."""
    scale_factor = 2 ** fractional_bits
    return np.round(array * scale_factor).astype(int)

def save_as_binary(array, filename):
    """Save the fixed point array to a text file in binary format."""
    with open(filename, 'w') as file:
        for value in np.nditer(array):
            # Convert integer to binary string with 16 bits (including sign)
            binary_string = format(value & 0xFFFF, '016b')  # mask to keep only 16 bits
            file.write(f"{binary_string}\n")

def process_directory(source_dir, target_dir, fractional_bits=13):
    """Process all .npy files in the source directory and save them as .txt files in the target directory."""
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)  # Create target directory if it doesn't exist
    
    for file in os.listdir(source_dir):
        if file.endswith('.npy'):
            # Load the array from .npy file
            source_path = os.path.join(source_dir, file)
            data = np.load(source_path)
            
            # Convert data to fixed point format
            fixed_point_data = convert_to_fixed_point(data, fractional_bits)
            
            # Generate the target file path
            target_file_name = file.replace('.npy', '.txt')
            target_path = os.path.join(target_dir, target_file_name)
            
            # Save the converted data as a .txt file in binary format
            save_as_binary(fixed_point_data, target_path)
            print(f"Processed {file} to {target_file_name}")

# Example usage
source_directory = './Weights'
target_directory = './Weights_fix'
process_directory(source_directory, target_directory)

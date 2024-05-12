import numpy as np

# Define the fixed point conversion factors
fractional_bits = 13

# Calculate the number of steps and increment
num_steps = 2**15  # 15 bits total
increment = 4 / num_steps

# Generate the input values in fixed point format
input_values = np.linspace(0, 4-increment, num_steps)

# Calculate the tanh of input values
tanh_values = np.tanh(input_values)

# Convert the tanh values to fixed point format
tanh_fixed_point = np.round(tanh_values * (2**fractional_bits)).astype(int)

# Create the memory initialization file (.mif) content
mif_content = ["DEPTH = {};".format(num_steps),
               "WIDTH = 15;",
               "ADDRESS_RADIX = UNS;",
               "DATA_RADIX = BIN;",
               "CONTENT",
               "BEGIN"]

# Adding address and data pairs to the content
for i in range(num_steps):
    binary_value = format(tanh_fixed_point[i], '015b')  # 15-bit binary format
    mif_content.append("{} : {};".format(i, binary_value))
mif_content.append("END;")

# Join all parts to form the final mif content
mif_string = "\n".join(mif_content)

# Save the content to a .mif file
mif_file_path = './tanh_lut.mif'

with open(mif_file_path, 'w') as file:

    file.write(mif_string)
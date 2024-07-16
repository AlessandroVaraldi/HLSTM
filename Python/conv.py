def q213_to_decimal(value):
    # Controllare il segno
    is_negative = value[0] == '1'
    
    # Parte intera
    integer_bits = value[1:3]
    integer_value = int(integer_bits, 2)
    
    # Parte frazionaria
    fractional_bits = value[3:]
    fractional_value = sum([int(bit) * (2 ** -(index + 1)) for index, bit in enumerate(fractional_bits)])
    
    # Valore finale
    result = integer_value + fractional_value
    if is_negative:
        result = -result
    
    return result

single_binary_value = f"{4939:016b}"

# Conversione in decimale
single_converted_decimal_number = q213_to_decimal(single_binary_value)
print(single_converted_decimal_number)
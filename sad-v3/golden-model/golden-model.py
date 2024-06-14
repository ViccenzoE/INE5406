import random

def generate_binary_32():
    return format(random.randint(0, 2**32 - 1), '032b')

while True:
    input_binary = generate_binary_32()
    output_binary = generate_binary_32()
    if int(input_binary, 2) > int(output_binary, 2):
        break

# Separar as strings binárias em segmentos de 8 bits
entrada11 = input_binary[0:8]
entrada12 = input_binary[8:16]
entrada13 = input_binary[16:24]
entrada14 = input_binary[24:32]

entrada21 = output_binary[0:8]
entrada22 = output_binary[8:16]
entrada23 = output_binary[16:24]
entrada24 = output_binary[24:32]

# Inicializar o acumulador com 0
accumulator = 0

# Calcular a diferença acumulada entre os segmentos
diff1 = abs(int(entrada11, 2) - int(entrada21, 2))
diff2 = abs(int(entrada12, 2) - int(entrada22, 2))
diff3 = abs(int(entrada13, 2) - int(entrada23, 2))
diff4 = abs(int(entrada14, 2) - int(entrada24, 2))

accumulator = diff1 + diff2 + diff3 + diff4

accumulator_binary = bin(accumulator)[2:].zfill(14)

# Montar a saída formatada
output = f"{input_binary} {output_binary} {accumulator_binary}"

# Salvar a saída em um arquivo .dat
with open('estimulos.dat', 'w') as file:
   file.write(output)
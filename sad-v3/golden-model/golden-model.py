import random

def generate_binary_32():
    return format(random.randint(0, 2**32 - 1), '032b')

# Gerar números binários de 32 bits
input_binary = generate_binary_32()
output_binary = generate_binary_32()

# Separar as strings binárias em segmentos de 8 bits
input_segments = [input_binary[i:i+8] for i in range(0, 32, 8)]
output_segments = [output_binary[i:i+8] for i in range(0, 32, 8)]

# Inicializar o acumulador com 0
accumulator = 0

# Calcular a diferença acumulada entre os segmentos
for i in range(4):
    diff = int(input_segments[i], 2) - int(output_segments[i], 2)
    accumulator += diff

    # Limitar o acumulador a 14 bits para evitar overflow
    accumulator &= 0x3FFF  # 0x3FFF é o número 14 bits com todos os bits definidos

# Converter o acumulador de volta para binário com 14 bits
accumulator_binary = format(accumulator, '014b')

# Montar a saída formatada
output = f"{input_binary} {output_binary} {accumulator_binary}"

# Salvar a saída em um arquivo .dat
with open('estimulos.dat', 'w') as file:
    file.write(output)
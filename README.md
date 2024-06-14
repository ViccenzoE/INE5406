# Atividade Prática III

Relatório da Atividade Prática III (AP3)

## Grupo 9

- Viccenzo Escarrone (Matrícula 22215096)
- Leonardo Fonseca Franchini (Matrícula 23100484)
- Lucas Ryan Carneiro (21202295)

## Descrição dos circuitos

### ABST
Retorna o valor absoluto do sinal "a", convertendo-o para unisigned e depois alocando seus valores para um vetor correspondente a quantidade de bits do seu valor absoluto.

### Mux 2 para 1
Descreve um multiplexador parametrizável 2 para 1, que direciona um dos dois vetores de entrada (a ou b) para a saída (y) com base no sinal de seleção (sel).

```
WITH sel SELECT y <= 
	a WHEN '0',
	b WHEN '1';
END comportamento;
```

### registrador
Registrador que captura e armazena o valor de entrada D no sinal de saída Q em cada borda de subida do sinal de relógio clk. O número de bits armazenados é definido pelo parâmetro genérico N, com um valor padrão de 14 bits.

### sad_bc
Descreve um módulo que calcula a Soma das Diferenças Absolutas (SAD) controlado por uma FSM. Ele realiza a leitura e processamento de amostras, realizando operações em ciclos de relógio definidos pela FSM. O módulo é configurável através de parâmetros genéricos, permitindo ajustar o número de bits por amostra, número de amostras por bloco e a paralelização da leitura das amostras.

### sad_bo
Implementa a lógica operacional para calcular a Soma das Diferenças Absolutas (SAD) usando registradores, subtratores, módulos absolutos, somadores e multiplexadores. A entidade sad_bo lê amostras de entrada, calcula a diferença absoluta entre elas, soma essas diferenças e armazena o resultado. Os componentes são configuráveis através de parâmetros genéricos, permitindo ajustar o número de bits usados nas operações.

### somadornbits
Implementa um somador de múltiplos bits (N bits) utilizando somadores completos de 1 bit (somador1bit). Ele utiliza um gerador para instanciar N somadores de 1 bit, onde cada somador recebe o carry-out do somador anterior como carry-in. O resultado da soma é armazenado no vetor de saída s, que tem N+1 bits para acomodar o carry-out final. O primeiro somador usa cin como carry-in inicial, e o último somador produz o bit de carry-out final.

### subtratornbits
Define um subtrator de N bits, que realiza a operação de subtração entre dois vetores de bits (sub1 e sub2) e produz um vetor de saída (saida).

### SAD
Integra os componentes sad_bo (bloco operacional) e sad_bc (bloco de controle) para calcular a Soma das Diferenças Absolutas (SAD). O componente sad_bc gerencia a lógica de controle e estados, enquanto sad_bo realiza a operação de subtração e soma absoluta. A arquitetura arc conecta esses componentes utilizando sinais intermediários para coordenar as operações e transmitir os resultados e estados apropriados.

## Simulação
Durante a simualção, houveram alguns problemas relacionado à entrada de dados da memmória para o sad_bo e sad_bc, o que gerou um comportamento "parado" no programa, o qual precisaria ser investigado mais a fundo para entendermos o problema.

## Outras observações



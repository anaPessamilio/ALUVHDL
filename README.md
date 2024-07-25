# Calculadora VHDL

Este projeto contém uma implementação de uma calculadora simples em VHDL. A calculadora pode realizar operações básicas, como adição, subtração, multiplicação e divisão de dois números de 8 bits.

## Descrição

### Entidade calculadora

A entidade calculadora define os seguintes sinais e portas:

### Entradas:

- number: Número de 8 bits a ser operado.
- input_n: Sinal de entrada para selecionar o número (primeiro ou segundo).
- opr: Operador de 2 bits para selecionar a operação (00: multiplicação, 01: divisão, 10: adição, 11: subtração).
- input_opr: Sinal de entrada para ativar a operação.
- reset: Sinal de reset para limpar os registros.
- clk: Sinal de clock.

### Saídas:

- res: Resultado da operação de 8 bits.

## Arquitetura

A arquitetura behavior descreve o comportamento da calculadora, incluindo:

### Sinais Internos:

- number_1: Primeiro número.
- number_2: Segundo número.
- result: Resultado da operação.

## Processo Principal:

- Armazenamento de Números: Atualiza number_1 e number_2 com base no sinal input_n.
- Execução da Operação: Realiza a operação selecionada pelo sinal opr e armazena o resultado em result.
- Reset: Limpa todos os registros e sinais quando o sinal reset é ativado.

## Dependências

Para compilar e simular o código VHDL, você precisará das seguintes ferramentas:

- Compilador VHDL (como o ModelSim ou Vivado)

## Compilação e Simulação

Para compilar e simular o código VHDL, siga estes passos:

- vlib work
- vhdl -work work calculadora.vhdl

## Simular o Código VHDL:

- vsim work.calculadora

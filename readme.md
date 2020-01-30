# Desafio de Ruby

Nesse desafio, você (com muita fé) aprenderá o "jeito Ruby" de programar, além de aprender um pouco sobre o modelo de orientação a objetos do Ruby.

## O Desafio

Sua missão será implementar uma Calculadora, que tem implementações bem curiosas de várias operações famosas. Além disso, essa potente máquina é orientada a objetos, implementado conceitos como a divisão de responsabilidades, isto é, cada classe só tem uma função, além de ser fácilmente extensível com novas operações.

## Módulos e classes

Nosso projeto estará contido no módulo `Calculadora`, que conterá as Classes `Menu` e `Operações`. O objetivo dessa divisão é "não poluir o namespace atual", ou seja, se tivermos outra parte do programa em que seja preciso usar o nome de classe `Menu`, essa classe não iria conflitar com a classe `Menu` da calculadora, que seria chamada por `Calculadora::Menu`.

A outra classe do módulo `Calculadora` é `Operacoes`, que contém a implementação das operações que a calculadora irá realizar, sendo um método para cada operação.

## Instruções

Você implementará um menu e as operações descritas a seguir, sem alterar nada no arquivo `main.rb`.

### Menu

Você implementará um menu baseado em texto, que conterá uma opção para cada operação e um botão de sair. Ele deve ser o construtor da classe `Menu`. O menu será responsável também por conseguir a entrada do usuário e a passar para a classe `Operacoes` Exemplo:

```
 -------------------------
| Bem vindo a calculadora |
 -------------------------

1. Operacao 1
2. Operacao 2
3. Sair

```
### Operações

#### Média preconceituosa

Ao calcular a média da turma, um professor decidiu não incluir alguns alunos, pois não gostava deles. Como seu monitor, é sua missão implementar uma média que ignore as notas de certos alunos.

##### Entrada

`notas` que é uma String em JSON incluindo o nome do aluno e sua nota
Ex:

```javascript
{"Tomás":10, "Iury":10, "Vini":10}
```

`lista_negra` é a lista de alunos que serão desconsiderados
Ex:

```
Tomás, Iury
```

**Dica: use o método** `JSON.parse(notas)` **para transformar a entrada em uma Hash. Use também o método .split pertencente a classe** `String` **para transformar a string em uma array.**

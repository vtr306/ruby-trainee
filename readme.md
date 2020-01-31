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

Sua opção: 
```

Ao digitar um número, o usuário deverá entrar com os dados. Após isso o resultado deverá ser exibido na tela e ao apertar enter, o menu deverá ser redesenhado até a opção de sair ser selecionada.

### Operações

#### Média preconceituosa

Ao calcular a média da turma, um professor decidiu não incluir alguns alunos, pois não gostava deles. Como seu monitor, é sua missão implementar uma média que ignore as notas de certos alunos.

##### Entrada

`notas` que é uma String em JSON incluindo o nome do aluno e sua nota
Ex:

```javascript
{"Tomás":10, "Iury":10, "Vini":10}
```

`lista_negra` é a lista de alunos que serão desconsiderados, separados por espaço.
Ex:

```
Tomás Iury
```

##### Saída

A média deverá ser exibida na tela

**Dica: use o método** `JSON.parse(notas)` **para transformar a entrada em uma Hash. Use também o método .split pertencente a classe** `String` **para transformar a string em uma array.**

#### Calculadora sem números?

Muita gente diz que não gosta de matemática por causa dos números, porém nós da engenharia sabemos que o terror está nas letras. Logo o desafio é dizer se uma série de números é divisível por 25 ou não, porém **sem usar números ou operações matemáticas**. Os números deverão ser lidos como string. Você também poderá usar strings para representar números. Ex:

```ruby
# permitido
numero = "453"

# proibido
numero = 453
```

##### Entrada

`numeros`: string contendo vários números separados por espaço

##### Saída

Para cada número deverá ser exibida uma letra "S" (é divisível) ou "N" (não é divisível). Ex:

`S S N S N N S`

#### Filtrar filmes

Você pode estar se perguntando o que isso tem a ver com uma calculadora, *eu realmente não sei.* Acabaram as ideias. Para essa operação você irá filtrar uma lista de filmes (Hash) de acordo com seu gênero e ano de lançamento.

##### Entrada

`generos`: array incluindo os gêneros que os resultados tem que ter. Ex:

`["Action", "Fantasy"]`

`ano`: Os filmes terão que ser lançados a partir desse ano para entrar nos resultados

##### Saída

Os nomes dos filmes, separados por uma quebra de linha. Ex:

```
FilmeA
FilmeB
FilmeC
```
# Atividade - 1 

## inicia programa no endereço 000
~~~
ORG 000 
~~~


* Load = Carregando o valor 
* Store = Definindo como esse valor vai ser chamado futuramente dentro do processo 
~~~
Load D
Store NAME_D
Load a 
Store NAME_A
Load n
Store NAME_N
Load i
Store NAME_I
Load e
Store NAME_E
Load l
Store NAME_L
~~~

## Termina a execução 
~~~
Halt
~~~

## Define o valor ASCII de cada load
~~~ 
D,HEX 68
a,HEX 97
n,HEX 110
i,HEX 105
e,HEX 101
l,HEX 108
~~~

## Reservando o espaço para o nome Daniel 
~~~
NAME_D, HEX 0
NAME_A, HEX 0
NAME_N, HEX 0
NAME_I, HEX 0
NAME_E, HEX 0
NAME_L, HEX 0
~~~

# Atividade - 2 
## (Explicação linha por linha)

## Define o modelo de memoria small
~~~
.MODEL small
~~~

## Aloca um espaço de 64 bytes para a pilha 
~~~
.STACK 64
~~~

## Inicio da seção
~~~
.DATA                             
~~~

## Define uma mensagem e termina com $
~~~
 message db 'Soldador', '$'
~~~

## Inicio da seção de código
~~~
.CODE  
~~~

## Define o inicio do procedimento principal
~~~
main proc  
~~~

## Carrega o endereço do segmento em AC
~~~
mov ax, @data 
~~~

## Move o valor em AX para o registrador DS
~~~
mov ds, ax
~~~

## Preparar o registrador AH para a função 09h do DOS
~~~
mov ah, 9h   
~~~ 

## vai fazer o deslocamento da msg em DX
~~~
mov dx, offset message
~~~

## Instrução de interrupção
~~~
int 21h   
~~~

## Marca o fim do procedimento
~~~
main endp  
~~~

## Indica o fim do procedimento todo
~~~
end main
~~~
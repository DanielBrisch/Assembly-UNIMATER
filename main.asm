v.MODEL small ; Define o modelo de memoria small
.STACK 64 ; Aloca um espaço de 64 bytes para a pilha 

.DATA                             ; Inicio da seção
    message db 'Soldador', '$'    ; Define uma mensagem e termina com $

.CODE                              ; Inicio da seção de código
main proc                          ; Define o inicio do procedimento principal

         mov ax, @data             ; Carrega o endereço do segmento em AC
         mov ds, ax                ; Move o valor em AX para o registrador DS

         mov ah, 9h                ; Preparar o registrador AH para a função 09h do DOS
         mov dx, offset message    ; vai fazer o deslocamento da msg em DX

         int 21h                   ; Instrução de interrupção
main endp                          ; Marca o fim do procedimento
end main ; Indica o fim do procedimento todo 
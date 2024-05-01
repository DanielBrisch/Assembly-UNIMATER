.MODEL small 
.STACK 64  

.DATA
    message db 'Soldador', '$'

.CODE
main proc

         mov ax, @data
         mov ds, ax

         mov ah, 9h
         mov dx, offset message

         int 21h
main endp
end main
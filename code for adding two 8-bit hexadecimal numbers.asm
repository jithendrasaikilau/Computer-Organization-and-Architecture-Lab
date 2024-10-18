org 100h

num1 db 12h
num2 db 1Ah

start:
mov al,num1
add al,num2
mov bl, al
;converting the higher nibble
mov ah, al
and ah,0F0h
shr ah, 4
add ah, 30h
cmp ah, 39h
jle first_bit
add ah,7
first_bit: 
           mov dl,ah
           mov ah,02h
           int 21h  
;converting the lower nibble 
mov ah,bl
and ah,0Fh    
add ah,30h
cmp ah,39h
jle second_bit
add ah,7
second_bit: 
            mov dl,ah
            mov ah,02h
            int 21h
ret

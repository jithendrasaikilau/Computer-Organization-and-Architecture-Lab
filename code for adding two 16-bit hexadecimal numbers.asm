org 100h    
jmp start

start: 
       mov ax,1234h
       add ax,4567h
       mov bx,ax
       
       and ax,0F000h
       shr ax,12
       add ax,30h
       cmp ax,39h
       jle first_bit
       add ax,7h
first_bit: 
           mov dx,ax
           mov ah,02h
           int 21h

       mov ax,bx
       and ax,0F00h
       shr ax,8
       add ax,30h
       cmp ax,39h
       jle second_bit
       add ax,7h
second_bit: 
            mov dx,ax
            mov ah,02h
            int 21h

       mov ax,bx
       and ax,00F0h
       shr ax,4
       add ax,30h
       cmp ax,39h
       jle third_bit
       add ax,7h
third_bit: 
            mov dx,ax
            mov ah,02h
            int 21h 

       mov ax,bx
       and ax,000Fh
       add ax,30h
       cmp ax,39h
       jle fourth_bit
       add ax,7h
fourth_bit: 
            mov dx,ax
            mov ah,02h
            int 21h
            
ret

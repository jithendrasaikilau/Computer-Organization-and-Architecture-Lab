ORG 100h

MOV AL, 22   

; Split the number into tens and units
MOV BL, 10       
DIV BL            

; Store the quotient (tens) and remainder (units)
MOV CH, AL        
MOV CL, AH        

MOV DX, OFFSET msg_1 
MOV AH, 09h       
INT 21h  

; Convert tens digit to ASCII
ADD CH, '0'      
MOV DL, CH        
MOV AH, 02h      
INT 21h           

; Convert units digit to ASCII
ADD CL, '0'      
MOV DL, CL        
MOV AH, 02h       
INT 21h           

; Terminate the program
MOV AH, 4Ch       ; DOS interrupt to exit the program
INT 21h

msg_1  DB 'The two digit no is : $'

END

INCLUDE EMU8086.INC

.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV CX,26                               
    
    MOV AH,2                               
    MOV DL,'A'    
    LOOP1:                                  
    INT 21H
    INC DL                                  
    LOOP LOOP1                              
    
 EXIT:                                      
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
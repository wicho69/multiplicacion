 LIST P=16F628A
    #INCLUDE p16f628a.inc
    
    ORG 0X00
    
    GOTO CONF

CONF
    VAR1 EQU 0x30  ;Nombro el registro  como VAR1
    VAR2 EQU 0x31  ;Nombro el registro  como VAR2
    MOVLW d'5'   ;Escribo el numero 3 decimal en el registro W
    MOVWF VAR1	    ;Muevo el valor de W a VAR1	
    MOVLW d'3' ;Escribo el numero 2 decimal en el registro W
    MOVWF VAR2	    ;Muevo el valor de W a VAR2	
    nop
    GOTO OPER	    ;Ir hasta la etiqueta OPER
    
SUM 
    ADDWF VAR2,0    ;Sumar el valor de VAR2 al registro W
    GOTO OPER	    ;Ir hasta la etiqueta OPER
  
OPER
    DECFSZ VAR1,1   ;Decrementar el valor de VAR1 y reasignarlo al mismo registro, 
    GOTO SUM	    ;Ir hasta la etiqueta SUM
    MOVWF VAR2	    ;Mover el valor de W a VAR2
    nop
    END
 LIST P=16F628A
    #INCLUDE p16f628a.inc
    
    ORG 0X00
    
    GOTO CONF

CONF
    VAR1 EQU 0x30  
    VAR2 EQU 0x31  
    MOVLW d'5'   
    MOVWF VAR1	    	
    MOVLW d'3' 
    MOVWF VAR2	    
    nop
    GOTO OPER	   
    
SUM 
    ADDWF VAR2,0    
    GOTO OPER	    
  
OPER
    DECFSZ VAR1,1   
    GOTO SUM	   
    MOVWF VAR2	    
    nop
    END

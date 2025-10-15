       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN3-05.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - EXIBINDO CPF 
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 14/10/2025
      *****************************
   

       DATA DIVISION.  
       WORKING-STORAGE SECTION. 

         01 SALDO-CONTA.  
          05 SALDO PIC S9(4)V99.  
       
       PROCEDURE DIVISION.  
           MOVE -1450.75 TO SALDO  
       
           DISPLAY "SALDO ATUAL: " SALDO  
       
           STOP RUN. 
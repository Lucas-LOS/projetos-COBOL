       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN3-02.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - FATURAMENTO LOJAS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 13/10/2025
      *****************************

       DATA DIVISION.  
           WORKING-STORAGE SECTION. 

       01  FILIAIS.    
           05 TOTAL PIC 9(4)V99.
           05 LOJA1 PIC 9(4)V99.
           05 LOJA2 PIC 9(9)V99.

           PROCEDURE DIVISION.
           MOVE 1023.45 TO LOJA1
           MOVE 807.55 TO LOJA2

           COMPUTE TOTAL = LOJA1 + LOJA2
           DISPLAY TOTAL

           STOP RUN.
       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN3-06.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - EXIBINDO CPF 
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 14/10/2025
      *****************************
       DATA DIVISION.  
       WORKING-STORAGE SECTION. 
       77  VALOR-FATURA PIC Z(4)9.99.

       PROCEDURE DIVISION.
           MOVE 235.40 TO VALOR-FATURA
           DISPLAY "TOTAL DA FATURA: " VALOR-FATURA

           STOP RUN.  
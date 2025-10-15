       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN3-09.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - CODIGO DE BARRAS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 14/10/2025
      *****************************
       DATA DIVISION.  
       WORKING-STORAGE SECTION. 

       01 PRODUTO PIC 9(6).
       01 LOTE           PIC 9(4).
       01 VALIDADE       PIC 9(8).

       PROCEDURE DIVISION.
       MOVE 123456 TO PRODUTO.
       MOVE 7890 TO LOTE.
       MOVE 20280419 TO VALIDADE.

       DISPLAY PRODUTO"|"LOTE"|"VALIDADE.
       STOP RUN. 

       

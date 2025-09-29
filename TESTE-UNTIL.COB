       IDENTIFICATION DIVISION.
       PROGRAM-ID. teste.
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: varying
      *DATA = 17/09/2025
      *****************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDAS   PIC 9(06)V99 VALUE ZEROS.
       77 WRK-QTD PIC 9(03) VALUE 1.  
       77 WRK-ACUM    PIC 9(08)V99 VALUE ZEROS.   
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               perform 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           end-if.
           perform  0300-FINALIZAR

           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-VENDAS.
       0200-PROCESSAR.
           ADD 1 TO WRK-QTD.      
           ADD WRK-VENDAS TO WRK-ACUM. 
           ACCEPT WRK-VENDAS.

       
       0300-FINALIZAR.
           DISPLAY "-----------------------".
           DISPLAY "ACUMULADO " WRK-ACUM.
           DISPLAY "ACUMULADO " WRK-QTD.
           DISPLAY "FINAL DE PROCESSAMENTO".

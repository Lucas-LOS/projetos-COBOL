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
       77 WRK-NUMERO   PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE 1.  
       77 WRK-RESUL    PIC 9(02) VALUE ZEROS.   
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
               perform 0200-PROCESSAR
           end-if.
           perform  0300-FINALIZAR

           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-NUMERO.
       0200-PROCESSAR.
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
               UNTIL WRK-CONTADOR > 10
           compute WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESUL
           end-perform.
       0300-FINALIZAR.
           DISPLAY "-----------------------".
           DISPLAY "FINAL DE PROCESSAMENTO".

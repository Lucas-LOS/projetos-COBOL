       IDENTIFICATION DIVISION.
       PROGRAM-ID. teste.
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: OPERADORES ARITMETICOS
      *DATA = 10/09/2025
      *****************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77  WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77  WRK-RESUL PIC S9(04) VALUE ZEROS.
        77  WRK-RESUL-ED PIC -999 VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY "===================="
           DISPLAY "NUMERO 1 " WRK-NUM1.
           DISPLAY "NUMERO 2 " WRK-NUM2.
      **************SUBTRAÇÃO*******************************************
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED
               DISPLAY "SUBTRAÇÃO....." WRK-RESUL.
               DISPLAY "SUBTRAÇÃO....." WRK-RESUL-ED.

               STOP RUN.
     
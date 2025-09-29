       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN2-4.
      * COMENTARIO 
       ENVIRONMENT     DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA            DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-NOME     PICTURE X(20) VALUE SPACES.
       01  WRK-SALDO    PICTURE S9(05) VALUE ZEROS.
       01 WRK-SALDO-EDT PICTURE Z.ZZZ.ZZZ.ZZ9,99.


       PROCEDURE       DIVISION.

           display "digite seu nome"
               accept WRK-NOME.
           display "digite seu saldo"
               accept WRK-SALDO.

               DISPLAY WRK-NOME .
      *------------ SOMA ----------------------------------------------- 
           ADD 500 TO WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-EDT.
           DISPLAY "SALDO " WRK-SALDO-EDT.
           display "---------------------".
           
      *------------  SUBTRAÇÃO -----------------------------------------     
           SUBTRACT 200 FROM WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-EDT.
           DISPLAY "SALDO " WRK-SALDO-EDT.
           display "---------------------".

      *------------  multiplicação -------------------------------------   
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
               MOVE WRK-SALDO TO WRK-SALDO-EDT.
           DISPLAY "SALDO " WRK-SALDO-EDT.
           display "---------------------".
           
      *------------  divisão -------------------------------------------
           divide WRK-SALDO BY 3 GIVING WRK-SALDO.
               MOVE WRK-SALDO TO WRK-SALDO-EDT.
           DISPLAY "SALDO " WRK-SALDO-EDT.
           display "---------------------".

           STOP RUN.
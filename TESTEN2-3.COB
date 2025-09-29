       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN2-3.
      * COMENTARIO 
       ENVIRONMENT     DIVISION.
       DATA            DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-NOME    PICTURE X(20) VALUE SPACES.
       01  WRK-SALDO   PICTURE S9(05) VALUE ZEROS.

       PROCEDURE       DIVISION.

           display "digite seu nome"
               accept WRK-NOME.
           display "digite seu saldo"
               accept WRK-SALDO.
      *------------ SOMA ----------------------------------------------- 
           ADD 500 TO WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           display "---------------------".
           
      *------------  SUBTRAÇÃO -----------------------------------------     
           SUBTRACT 200 FROM WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           display "---------------------".

      *------------  multiplicação -------------------------------------   
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           display "---------------------".
           
      *------------  divisão -------------------------------------------
           divide WRK-SALDO BY 3 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           display "---------------------".

           STOP RUN.
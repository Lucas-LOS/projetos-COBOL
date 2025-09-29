       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN2-5.
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
               COMPUTE WRK-SALDO = WRK-SALDO * 1,10

            MOVE WRK-SALDO TO WRK-SALDO-EDT.
           DISPLAY "SALDO " WRK-SALDO-EDT.
           display "---------------------".

           STOP RUN.
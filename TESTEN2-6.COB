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
       01  WRK-SALDO-EDT PICTURE Z.ZZZ.ZZZ.ZZ9,99.
       01  WRK-TIPO-CONTA PICTURE 9.

       PROCEDURE       DIVISION.
           display "digite seu nome"
               accept WRK-NOME.
           display "digite seu saldo"
               accept WRK-SALDO.
           DISPLAY " qual tipo de conta (1- FISICA OU 2-JURIDICA) ?"
               ACCEPT WRK-TIPO-CONTA.

           IF WRK-SALDO GREATER THAN OR EQUAL 5000 
               DISPLAY WRK-NOME 
               MOVE WRK-SALDO TO WRK-SALDO-EDT
               DISPLAY "SALDO " WRK-SALDO-EDT
                   EVALUATE WRK-TIPO-CONTA
                       WHEN 1
                           DISPLAY "CONTA FISICA"
                       WHEN 2
                           DISPLAY "CONTA JURIDICA"
                       WHEN OTHER
                           DISPLAY "TIPO INVALIDO"
                   END-EVALUATE
           ELSE 
               DISPLAY "SALDO NÃO COMPATIVEL"
           END-IF.

           STOP RUN.
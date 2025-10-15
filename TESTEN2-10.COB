       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN2-9.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 10/09/2025
      *****************************
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
       01  WRK-CONTADOR    PICTURE 9(03) USAGE COMP.

       PROCEDURE       DIVISION.
       0100-PRINCIPAL  SECTION.
           PERFORM 0200-INICIAR.
           PERFORM 0300-PROCESSAR VARYING WRK-CONTADOR FROM 0 BY 1
                                  UNTIL WRK-TIPO-CONTA EQUAL 9.
           PERFORM 0400-FINALIZAR.
           STOP RUN.

       0100-FIM. EXIT.
      *-------------- INICIAR ------------------------ 
       0200-INICIAR    SECTION.
         display "digite seu nome".
               accept WRK-NOME.
         display "digite seu saldo".
               accept WRK-SALDO.
         DISPLAY "qual tipo de conta (1- FISICA OU 2-JURIDICA 9-SAIR)?".
               ACCEPT WRK-TIPO-CONTA.
         DISPLAY "====================================================".

       0200-FIM. EXIT.
      *-------------- PROCESSAR ---------------------- 
       0300-PROCESSAR  SECTION.

           IF WRK-SALDO GREATER THAN OR EQUAL 5000 AND
               (WRK-TIPO-CONTA EQUAL 1 OR WRK-TIPO-CONTA EQUAL 2 )

               DISPLAY WRK-NOME 
               MOVE WRK-SALDO TO WRK-SALDO-EDT
               DISPLAY "SALDO " WRK-SALDO-EDT
           ELSE 
               EVALUATE true
                WHEN WRK-SALDO LESS 5000
                   DISPLAY "SALDO NÃO COMPATIVEL"
                WHEN WRK-TIPO-CONTA NOT EQUAL 1 OR
                     WRK-TIPO-CONTA EQUAL 2
                    DISPLAY "TIPO DE CONTA NÃO EXISTE"
               END-EVALUATE 
      
           END-IF.
               PERFORM 0200-INICIAR.

       0300-FIM. EXIT.
      *-------------- FINALIZAR ----------------------
       0400-FINALIZAR SECTION.
       DISPLAY "----------------------".
       DISPLAY " ----- ESTATISTICA -----".
       DISPLAY "CLIENTES LIDOS: " WRK-CONTADOR.
       0400-FIM. EXIT.

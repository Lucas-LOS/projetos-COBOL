       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN2-15.
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
       INPUT-OUTPUT    SECTION.
       FILE-CONTROL.
           SELECT EARQCLI ASSIGN TO "./EARQCLI.TXT"
               FILE STATUS IS FS-EARQCLI.
           SELECT SARQCLI ASSIGN TO "./SARQCLI.TXT"
               FILE STATUS IS FS-SARQCLI.

       DATA            DIVISION.
       FILE            SECTION.
       FD EARQCLI 
           RECORDING MODE IS F.
       01 REGISTRO.
           05 REG-AGENCIA      PICTURE X(04).
           05 REG-CONTA        PICTURE X(05).
           05 REG-NOME         PICTURE X(30).
           05 REG-GERENTE      PICTURE X(03).
           05 REG-TIPO-CONTA   PICTURE 9(01).
           05 REG-SALDO        PICTURE 9(10)V99.

       FD SARQCLI 
           RECORDING MODE IS F.
      *---------- LAYOUT = 22 POSICOES (AGENCIA,CONTA, TIPO E SALDO)
       01  REG-SARQLI          PICTURE X(22).
           

           
       WORKING-STORAGE SECTION.
       01  FS-EARQCLI          PICTURE 9(02).
       01  FS-SARQCLI          PICTURE 9(02).
      *---------- VARIAVEIS ACUMULADORAS ------------------
       01  WRK-CONTADOR         PICTURE 9(03) USAGE COMP.
       01  WRK-CONTADOR-VALIDO  PICTURE 9(03) USAGE COMP.
       01  WRK-CONTADOR-NVALIDO PICTURE 9(03) USAGE COMP.

       PROCEDURE               DIVISION.
       0100-PRINCIPAL          SECTION.
           PERFORM 0200-INICIAR.
           PERFORM 0300-PROCESSAR UNTIL FS-EARQCLI EQUAL 10.
           PERFORM 0400-FINALIZAR.
           STOP RUN.

       0100-FIM. EXIT. 
      *-------------- INICIAR ------------------------ 
       0200-INICIAR    SECTION.
           OPEN INPUT EARQCLI.
           OPEN OUTPUT SARQCLI.

               IF FS-EARQCLI NOT EQUAL ZEROS OR 
                  FS-SARQCLI NOT EQUAL ZEROS
                   DISPLAY "ARQUIVO NÃO ABERTO"
                   GOBACK
               END-IF.

               PERFORM 0210-LEITURA.
       0200-FIM. EXIT.

       0210-LEITURA    SECTION.
           READ EARQCLI.
       0210-FIM. EXIT.
      *-------------- PROCESSAR ---------------------- 
       0300-PROCESSAR  SECTION.
           
           ADD 1 TO WRK-CONTADOR

           IF REG-SALDO GREATER THAN OR EQUAL 5000 AND
               (REG-TIPO-CONTA EQUAL 1 OR REG-TIPO-CONTA EQUAL 2 )

               DISPLAY REGISTRO
               ADD 1 TO WRK-CONTADOR-VALIDO
           ELSE 
               EVALUATE true
                WHEN REG-SALDO LESS 5000
                   DISPLAY "SALDO NÃO COMPATIVEL"
                WHEN REG-TIPO-CONTA NOT EQUAL 1 OR
                     REG-TIPO-CONTA EQUAL 2
                    DISPLAY "TIPO DE CONTA NÃO EXISTE"
               END-EVALUATE 
               ADD 1 TO WRK-CONTADOR-NVALIDO
           END-IF.

           PERFORM 0210-LEITURA.
               

       0300-FIM. EXIT.
      *-------------- FINALIZAR ----------------------
       0400-FINALIZAR SECTION.
           CLOSE EARQCLI.
       DISPLAY "----------------------".
       DISPLAY " ----- ESTATISTICA -----".
       DISPLAY "CLIENTES LIDOS: " WRK-CONTADOR.
       DISPLAY "VALIDOS.......: " WRK-CONTADOR-VALIDO.
       DISPLAY "NÃO VALIDOS...: " WRK-CONTADOR-NVALIDO.
       0400-FIM. EXIT.
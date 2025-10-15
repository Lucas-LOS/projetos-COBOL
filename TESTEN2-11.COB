       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN2-11.
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
       01 REGISTRO.
           05 REG-AGENCIA      PICTURE X(04).
           05 REG-CONTA        PICTURE X(05).
           05 REG-NOME         PICTURE X(30).
           05 REG-GERENTE      PICTURE X(03).
           05 REG-TIPO-CONTA   PICTURE 9(01).
           05 REG-SALDO        PICTURE 9(10)V99.



           

      
       01  WRK-CONTADOR    PICTURE 9(03) USAGE COMP.

       PROCEDURE       DIVISION.
       0100-PRINCIPAL  SECTION.
           PERFORM 0200-INICIAR.
           PERFORM 0300-PROCESSAR 
           PERFORM 0400-FINALIZAR.
           STOP RUN.

       0100-FIM. EXIT.
      *-------------- INICIAR ------------------------ 
       0200-INICIAR    SECTION.
         display "digite seu nome".
               accept REG-NOME.
         display "digite sua agência".
               accept REG-AGENCIA.
         display "digite sua conta".
               accept REG-CONTA.
         display "digite codigo gerencial".
               accept REG-GERENTE.
         display "digite seu saldo".
               accept REG-SALDO.
         DISPLAY "qual tipo de conta (1- FISICA OU 2-JURIDICA 9-SAIR)?".
               ACCEPT REG-TIPO-CONTA.
         DISPLAY "====================================================".

       0200-FIM. EXIT.
      *-------------- PROCESSAR ---------------------- 
       0300-PROCESSAR  SECTION.

           IF REG-SALDO GREATER THAN OR EQUAL 5000 AND
               (REG-TIPO-CONTA EQUAL 1 OR REG-TIPO-CONTA EQUAL 2 )

               DISPLAY REGISTRO
           ELSE 
               EVALUATE true
                WHEN REG-SALDO LESS 5000
                   DISPLAY "SALDO NÃO COMPATIVEL"
                WHEN REG-TIPO-CONTA NOT EQUAL 1 OR
                     REG-TIPO-CONTA EQUAL 2
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
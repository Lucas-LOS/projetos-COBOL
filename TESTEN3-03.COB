       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN3-03.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - FOLHA DE PAGAMENTO
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 13/10/2025
      *****************************
   

       DATA DIVISION.  
       WORKING-STORAGE SECTION. 
       01  SALARIO-LIQUIDO     PIC 9(10)V99.
       01  FUNCIONARIO.
           05 NOME             PIC X(20).
           05 DEPART           PIC X(03).
           05 SALARIO-BRUTO    PIC 9(09)V99.
           05 IMPOSTO          PIC 9(09)V99.

           PROCEDURE DIVISION.
           MOVE "LUCAS" TO NOME
           MOVE "ATI" TO DEPART
           MOVE 3200.50 TO SALARIO-BRUTO
           MOVE 480.08 TO IMPOSTO

           COMPUTE SALARIO-LIQUIDO = SALARIO-BRUTO - IMPOSTO
           

           DISPLAY "HOLERITE COMPLETO"
           DISPLAY "NOME DO FUNCIONARIO. " NOME
           DISPLAY "DEPARTAMENTO........ " DEPART
           DISPLAY "SALARIO BASE........ " SALARIO-BRUTO
           DISPLAY "IMPOSTO DESCONATDO.. " IMPOSTO
           DISPLAY "--------------------------------------"
           DISPLAY "SALARIO LIQUIDO...... " SALARIO-LIQUIDO
           

           STOP RUN.
           


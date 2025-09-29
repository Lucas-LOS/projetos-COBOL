       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTE-RANDOM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 aleatorio PIC 9.

       PROCEDURE DIVISION.
           COMPUTE aleatorio = FUNCTION INTEGER(FUNCTION RANDOM * 3) + 1
           DISPLAY "Número aleatório: " aleatorio
           STOP RUN.

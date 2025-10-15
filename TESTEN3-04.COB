       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN3-06.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - EXIBINDO CPF 
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 14/10/2025
      *****************************
   

       DATA DIVISION.  
       WORKING-STORAGE SECTION. 
       01 CPF.
         02 PART1 PIC 9(03).
         02 PART2 PIC 9(03).
         02 PART3 PIC 9(03).
         02 PART4 PIC 9(02).

       procedure division.
       MOVE 123 TO PART1
       MOVE 456 TO PART2
       MOVE 789 TO PART3
       MOVE 01  TO PART4

       DISPLAY "CPF FORMATADO: " PART1"."PART2"."PART3"-"PART4
       stop run.
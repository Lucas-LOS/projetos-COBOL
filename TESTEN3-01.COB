       IDENTIFICATION  DIVISION.
       PROGRAM-ID. TESTEN3-01.
      * COMENTARIO 
      *****************************
      * AREA DE COMENTARIOS - cadastro de nome e codigo
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: TESTE 8
      *DATA = 13/10/2025
      *****************************
        DATA DIVISION.  
           WORKING-STORAGE SECTION.  
           
           01 FUNCIONARIO.  
              05 NOME    PIC X(30).  
              05 CODIGO  PIC 9(4).  
           
           PROCEDURE DIVISION.  
               MOVE "JOANA SILVA" TO NOME  
               MOVE 1023 TO CODIGO  
           
               DISPLAY "NOME: " NOME  
               DISPLAY "CÓDIGO: " CODIGO  
           
               STOP RUN. 
           
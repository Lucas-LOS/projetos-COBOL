       IDENTIFICATION DIVISION.
       PROGRAM-ID. teste.
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: (IF ELSE) RECEBER 2 NOTAS, MÉDIA E IMPRIMIR
      *DATA = 11/09/2025
      *****************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77  WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77  WRK-MEDIA PIC 9(02) VALUE ZEROS.
      
       PROCEDURE DIVISION.
       ACCEPT WRK-NOTA1.
       ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           IF WRK-MEDIA >= 6
               DISPLAY "APROVADO"
           ELSE
               IF WRK-MEDIA >= 2
                   DISPLAY "RECUPERAÇÃO"
               ELSE
                   DISPLAY "REPROVADO"
                   END-IF
           END-IF.
       DISPLAY "MEDIA " WRK-MEDIA.
       STOP RUN.
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
           EVALUATE WRK-MEDIA
            WHEN 6 THRU 10
               DISPLAY "APROVADO"
            WHEN 2 THRU 5
                   DISPLAY "RECUPERAÇÃO"
            WHEN OTHER
                   DISPLAY "REPROVADO"
           END-EVALUATE.
       DISPLAY "MEDIA " WRK-MEDIA.
       STOP RUN.
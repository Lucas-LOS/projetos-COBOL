       IDENTIFICATION DIVISION.
       PROGRAM-ID. teste.
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: PARAGRAFOS
      *DATA = 16/09/2025
      *****************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77  WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77  WRK-MEDIA PIC 9(02) VALUE ZEROS.
      
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       PERFORM 0100-INICIALIZAR.
       perform 0200-PROCESSAR.
       perform  0300-FINALIZAR.
       STOP RUN.
       0100-INICIALIZAR.
       ACCEPT WRK-NOTA1.
       ACCEPT WRK-NOTA2.
       0200-PROCESSAR.
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
       0300-FINALIZAR.
       DISPLAY "MEDIA " WRK-MEDIA.
       STOP RUN.     
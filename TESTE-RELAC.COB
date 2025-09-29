       IDENTIFICATION DIVISION.
       PROGRAM-ID. teste.
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: (NIVEL 88) RECEBER USUARIO E NIVEL
      *DATA = 11/09/2025
      *****************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-LARGURA PIC 9(03)V99 VALUE ZEROS.
       77  WRK-COMPRIMENTO PIC 9(03)V99 VALUE ZEROS.
       77 WRK-AREA PIC 9(03)V99 VALUE ZEROS.
           88 ADM VALUE 01.
           88 USER VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY "LARGURA.."
           ACCEPT WRK-LARGURA.

           DISPLAY "COMPRIMENTO.."
           ACCEPT WRK-COMPRIMENTO.

           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
               DISPLAY "------------------------"
               display "AREA...." WRK-AREA
           else
               display "FALTA INFORMAR ALGO"
           end-if.
           
           STOP RUN.
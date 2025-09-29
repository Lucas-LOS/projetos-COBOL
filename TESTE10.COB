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
       77  WRK-USUARIO PIC X(20) VALUE SPACES.
       77  WRK-NIVEL PIC 9(02) VALUE ZEROS.
           88 ADM VALUE 01.
           88 USER VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY "USUARIO.."
           ACCEPT WRK-USUARIO.

           DISPLAY "NIVEL.."
           ACCEPT WRK-NIVEL.

           IF ADM
               DISPLAY "NIVEL - ADMINISTRADOR"
             else
               IF USER
                   DISPLAY "NIVEL USUARIO"
                  ELSE 
                   DISPLAY "USUARIO NÃO AUTORIZADO"
               end-if
           end-if.
           
           STOP RUN.
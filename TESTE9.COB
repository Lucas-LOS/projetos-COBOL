       IDENTIFICATION DIVISION.
       PROGRAM-ID. teste.
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: (EVALUATE) RECEBER PRODUTO, VALOR E CALCULAR FRETE 
      *DATA = 11/09/2025
      *****************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PRODUTO PIC X(20) VALUE SPACES.
       77    WRK-UF PIC X(02) VALUE SPACES.
       77  WRK-VALOR PIC 9(06)V99 VALUE ZEROS.
       77  WRK-FRETE PIC 9(04)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY "PRODUTO.."
           ACCEPT WRK-PRODUTO.

           DISPLAY "VALOR.."
           ACCEPT WRK-VALOR.
           
           DISPLAY "ESTADO A ENTREGAR.."
           ACCEPT WRK-UF

           EVALUATE WRK-UF
            WHEN "SP"
               COMPUTE WRK-FRETE = WRK-VALOR * 1.05
            WHEN "RJ"
               COMPUTE WRK-FRETE = WRK-VALOR * 1.10
            WHEN "MG"
               COMPUTE WRK-FRETE = WRK-VALOR * 1.15
            WHEN OTHER
               DISPLAY "NÃO PODEMOS ENTREGAR"
           END-EVALUATE.

           DISPLAY "========================"   
           DISPLAY "PRODUTO + VALOR DO FRETE " WRK-FRETE        
           STOP RUN.
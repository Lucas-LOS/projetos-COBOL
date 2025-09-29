       IDENTIFICATION DIVISION.
       PROGRAM-ID. JOKEMPO.
      *****************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTOR LUCAS OLIVEIRA DOS SANTOS (LOS)
      *OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      *DATA = 26/09/25
      *****************************
       environment division.
       input-output section.
       file-control.
       data division.
       WORKING-STORAGE SECTION.
       01 wrk-escolha-jogador PICTURE 9.
       01 wrk-escolha-com     PICTURE 9.
       01 wrk-resultado       PICTURE x(30).

       PROCEDURE       DIVISION.
       display "jokempo".
       display "1= pedra, 2= papel e 3= tesoura".
       accept wrk-escolha-jogador.

       
       COMPUTE wrk-escolha-com = function random * 3 + 1
               DISPLAY "Computador escolheu: " wrk-escolha-com

       evaluate true
           when wrk-escolha-jogador = wrk-escolha-com
               move "empate" to wrk-resultado
           when wrk-escolha-jogador =1 and wrk-escolha-com = 2
               move "derrota" to wrk-resultado
           when wrk-escolha-jogador =2 and wrk-escolha-com = 3
               move "derrota" to wrk-resultado
           when wrk-escolha-jogador =3 and wrk-escolha-com = 1
               move "derrota" to wrk-resultado
           when wrk-escolha-jogador =1 and wrk-escolha-com = 3
               move "vitoria" to wrk-resultado
           when wrk-escolha-jogador =2 and wrk-escolha-com = 1
               move "vitoria" to wrk-resultado
           when wrk-escolha-jogador =3 and wrk-escolha-com = 2
               move "vitoria" to wrk-resultado
       end-evaluate

       DISPLAY wrk-resultado.

       stop run.
           






       
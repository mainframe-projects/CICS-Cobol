      ******************************************************************
      * Author     :
      * Date       : 06/12/2018
      * Purpose    :
      * Tectonics  : Evaluar verbo es un reemplazo de una serie de
      *              sentencias IF-ELSE.
      *            Se puede utilizar para evaluar más de una condición.
      *              Es similar a la instrucción SWITCH en C programas.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX029.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM1          PIC S9(2) VALUE 20.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "CONDITION VERB" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            DISPLAY WS-NUM1
            MOVE 0 TO WS-NUM1
            DISPLAY WS-NUM1
            EVALUATE TRUE
               WHEN WS-NUM1 > 2
                   DISPLAY 'WS-NUM1 GREATER THAN 2'

               WHEN WS-NUM1 < 0
                   DISPLAY 'WS-NUM1 LESS THAN 0'

               WHEN OTHER
                   DISPLAY 'INVALID VALUE OF WS-A'
           END-EVALUATE.

            STOP RUN.
       END PROGRAM QG1CX029.

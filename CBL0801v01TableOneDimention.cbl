      ******************************************************************
      * Author     :
      * Date       : 18/12/2018
      * Purpose    : La clausula de ocurrencia se utiliza una sola vez
      *              en la declaración
      *
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX039.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-TABLE.
          05 WS-CANAL      PIC A(30) VALUE 'HOST Y APX' OCCURS 05 TIMES.

       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "TABLE ONE DIMENSIONAL" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            DISPLAY " WS-CANAL    : " WS-TABLE.


            STOP RUN.

       END PROGRAM QG1CX039.

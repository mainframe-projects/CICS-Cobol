      ******************************************************************
      * Author     :
      * Date       : 18/12/2018
      * Purpose    : La clausula de ocurrencia se utiliza una sola vez
      *              en la declaración bidimensional
      *
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX040.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-TABLE.
          05 WS-CANAL      OCCURS 16 TIMES.
           10 WS-ROWS      PIC A(10) VALUE 'HOST'.
           10 WS-TITULO    OCCURS 05 TIMES.
               15 WS-COLS  PIC X(06) VALUE 'APX'.


       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "TABLE TWO DIMENSION" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            DISPLAY " WS-CANAL    : " WS-TABLE.

            STOP RUN.

       END PROGRAM QG1CX040.

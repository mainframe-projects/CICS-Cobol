      ******************************************************************
      * Author     :
      * Date       : 18/12/2018
      * Purpose    : Se puede acceder a los elementos individuales de la
      *  tabla utilizando un subíndice
      *
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX041.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-TABLE.
          05 WS-CANAL      OCCURS 4 TIMES.
           10 WS-ROWS      PIC A(10) VALUE 'HOST'.
           10 WS-TITULO    OCCURS 5 TIMES.
               15 WS-COLS  PIC X(06) VALUE 'APX'.


       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "TABLE TWO DIMENSION" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            DISPLAY " WS-TABLE       : " WS-TABLE.
            DISPLAY " WS-CANAL(1)    : " WS-CANAL(1).
            DISPLAY " WS-CANAL(2)    : " WS-CANAL(2).
            DISPLAY " WS-CANAL(4)   : " WS-CANAL(4).
            DISPLAY " WS-TITULO(2,1)    : " WS-TITULO(2,1).
            DISPLAY " WS-TITULO(2,4)    : " WS-TITULO(2,4).

            MOVE '1234567890ABCDEFGHIJKLMN34GHIJKL56MNOPQR' TO WS-TABLE
            DISPLAY " WS-TABLE SIN HOST      : " WS-TABLE

            MOVE 'HOST2' TO WS-CANAL(2)
            MOVE 'HOST3' TO WS-CANAL(3)
            MOVE 'APX' TO WS-TITULO(1,2)
            DISPLAY " WS-TABLE CON HOST      : " WS-TABLE

            DISPLAY " WS-CANAL(1)    : " WS-CANAL(1).
            DISPLAY " WS-CANAL(2)    : " WS-CANAL(2).
            DISPLAY " WS-CANAL(3)   : " WS-CANAL(3).

            DISPLAY " WS-TITULO(1,1)    : " WS-TITULO(1,1).
            DISPLAY " WS-TITULO(1,2)    : " WS-TITULO(1,2).
            DISPLAY " WS-TITULO(1,3)    : " WS-TITULO(1,3).
            DISPLAY " WS-TITULO(1,4)    : " WS-TITULO(1,4).
            DISPLAY " WS-TITULO(1,5)    : " WS-TITULO(1,5).
            DISPLAY " WS-TITULO(2,5)    : " WS-TITULO(2,5).
            STOP RUN.

       END PROGRAM QG1CX041.

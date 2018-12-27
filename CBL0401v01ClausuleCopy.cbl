      ******************************************************************
      * Project    : Evaluación Cobol PC
      * Author     : ALDV
      * Date       : 28/11/2018
      * Purpose    :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX022.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).

       COPY QG4CX001.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "COMP-2 CLAUSE" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "

            MOVE 20.8953 TO WS-TEN1
            DISPLAY "WS-TEN             : " WS-TEN
            DISPLAY "WS-TEN1            : " WS-TEN1

            MOVE 1873.8563 TO WS-TEA1
            DISPLAY "WS-TEA             : " WS-TEA
            DISPLAY "WS-TEA1            : " WS-TEA1

            MOVE 928329.948 TO WS-INTERES1
            DISPLAY "WS-INTERES         : " WS-INTERES
            DISPLAY "WS-INTERES1        : " WS-INTERES1

            DISPLAY " "

            STOP RUN.
       END PROGRAM QG1CX022.

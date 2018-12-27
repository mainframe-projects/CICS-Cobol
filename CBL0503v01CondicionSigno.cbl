      ******************************************************************
      * Author     :
      * Date       : 03/12/2018
      * Purpose    :
      * Tectonics  :   Positive, Negative or Zero
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX025.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM1          PIC S9(9) VALUE -8.
       01 WS-NUM2          PIC S9(9) COMP-3.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "DECLARACIÓN DE RELACIÓN IF" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            DISPLAY WS-NUM1
            DISPLAY WS-NUM2

            MOVE 27 TO WS-NUM1
            MOVE -16 TO WS-NUM2

            IF WS-NUM1 IS POSITIVE THEN
               DISPLAY 'WS-NUM1 IS POSITIVE'.

            IF WS-NUM2 IS NEGATIVE THEN
               DISPLAY 'WS-NUM2 IS NEGATIVE'.

            MOVE 0 TO WS-NUM2
            IF WS-NUM2 IS ZERO THEN
               DISPLAY 'WS-NUM2 IS ZERO'.

            IF WS-NUM2 IS POSITIVE THEN
               DISPLAY 'WS-NUM2 IS POSITIVE'

            STOP RUN.
       END PROGRAM QG1CX025.

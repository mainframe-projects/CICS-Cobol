      ******************************************************************
      * Author     :
      * Date       : 03/12/2018
      * Purpose    :
      * Tectonics  :   Equal to (=),
      *                Greater than (>),
      *                Less than (<),
      *                Greater than or Equal (>=)
      *                Less than or equal (<=)
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX024.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM1          PIC 9(9).
       01 WS-NUM2          PIC 9(9) COMP-3.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "DECLARACIÓN DE RELACIÓN IF" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY ""
            MOVE 27 TO WS-NUM1
            MOVE 16 TO WS-NUM2

            IF WS-NUM1 IS GREATER THAN OR EQUAL TO WS-NUM2 THEN
                DISPLAY WS-NUM1 " ES MAYOR QUE " WS-NUM2
            ELSE
                DISPLAY WS-NUM2 " ES MAYOR QUE " WS-NUM1
            END-IF.
            STOP RUN.
       END PROGRAM QG1CX024.

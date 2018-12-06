      ******************************************************************
      * Author     :
      * Date       : 04/12/2018
      * Purpose    :
      * Tectonics  : La condición de clase se usa para verificar si un
      *              operando contiene solo alfabetos o datos numéricos.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX026.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM1          PIC X9(9) VALUE 'ILLARI'.
       01 WS-NUM2          PIC S9(9) COMP-3 VALUE 123456789.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "CONDITION CLASS" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            DISPLAY WS-NUM1
            DISPLAY WS-NUM2

            IF WS-NUM1 IS ALPHABETIC THEN
               DISPLAY 'WS-NUM1 IS ALPHABETIC'.

            IF WS-NUM1 IS NUMERIC THEN
               DISPLAY 'WS-NUM1 IS NUMERIC'.

            IF WS-NUM2 IS NUMERIC THEN
               DISPLAY 'WS-NUM2 IS NUMERIC'.

            STOP RUN.
       END PROGRAM QG1CX026.

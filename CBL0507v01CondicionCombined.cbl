      ******************************************************************
      * Author     :
      * Date       : 06/12/2018
      * Purpose    :
      * Tectonics  : Una condición combinada contiene dos o más
      *              condiciones conectadas utilizando operadores
      *              lógicos AND u OR.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX028.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM1          PIC 9(2) VALUE 20.
       01 WS-NUM2          PIC 9(2) VALUE 25.
       01 WS-NUM3          PIC 9(2) VALUE 20.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "CONDITION COMBINED" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            DISPLAY WS-NUM1
            DISPLAY WS-NUM2
            DISPLAY WS-NUM3

            IF WS-NUM1 IS LESS THAN WS-NUM2 AND WS-NUM1=WS-NUM3 THEN
               DISPLAY 'Both condition OK'
            ELSE
               DISPLAY 'Error'
            END-IF.

            STOP RUN.
       END PROGRAM QG1CX028.

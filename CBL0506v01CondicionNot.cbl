      ******************************************************************
      * Author     :
      * Date       : 05/12/2018
      * Purpose    :
      * Tectonics  : La condición negada se da usando la palabra clave
      *              NOT. Si una condición es verdadera y le hemos dado
      *              NO delante de ella, entonces su valor final es also.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX027.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM1          PIC 9(2) VALUE 20.
       01 WS-NUM2          PIC 9(9) VALUE 25..

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "CONDITION NOT" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            MOVE 65 TO WS-NUM1
            DISPLAY WS-NUM1

            IF NOT WS-NUM1 IS LESS THAN WS-NUM2 THEN
               DISPLAY 'IF-BLOCK'
            ELSE
               DISPLAY 'ELSE-BLOCK'
            END-IF.

            STOP RUN.
       END PROGRAM QG1CX027.

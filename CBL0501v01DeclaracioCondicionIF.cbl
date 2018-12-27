      ******************************************************************
      * Project    : Evaluación Cobol PC
      * Author     : ALDV
      * Date       : 29/11/2018
      * Purpose    :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX023.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM1          PIC 9(2) VALUE 15.
       01 WS-NUM2          PIC 9(2) VALUE 32.
       01 WS-NUM3          PIC 9(3) VALUE 30.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "DECLARACIÓN DE CONDICIÓN IF" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            DISPLAY "NUMERO 1 " WS-NUM1
            DISPLAY "NUMERO 2 " WS-NUM2
            DISPLAY "NUMERO 3 " WS-NUM3
            DISPLAY " "
            IF WS-NUM1 > WS-NUM2 THEN
                IF WS-NUM1 > WS-NUM3 THEN
                    DISPLAY "EL MAYOR ES " WS-NUM1
                ELSE
                    DISPLAY " EL MAYOR ES " WS-NUM3
                END-IF
            ELSE
                IF WS-NUM2 > WS-NUM3 THEN
                    DISPLAY "EL MAYOR ES " WS-NUM2
                ELSE
                    DISPLAY "EL MAYOR ES " WS-NUM3
                END-IF
            END-IF.

            STOP RUN.
       END PROGRAM QG1CX023.

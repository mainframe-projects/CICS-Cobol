      ******************************************************************
      * Author     :
      * Date       : 14/12/2018
      * Purpose    : Verbo de cadena se utiliza para concatenar las cadenas
      *              los caracteres de cadena..
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX037.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-STR_IN1       PIC X(20) VALUE 'ARQUITECTURA'.
       01 WS-STR_IN2       PIC X(15) VALUE 'AEDCILIDVALDV'.
       01 WS-STR_OUT       PIC X(20) VALUE 'APX'.
       01 WS-COUNT         PIC 99 VALUE 1.

       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "STATEMENT STRING" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            STRING WS-STR_IN1 DELIMITED BY SIZE
                   WS-STR_IN2 DELIMITED BY SPACE
                   INTO WS-STR_OUT
                   WITH POINTER WS-COUNT
                   ON OVERFLOW DISPLAY 'OVERFLOW ....!'
            END-STRING.
            DISPLAY " WS-STR_OUT " WS-STR_OUT
            DISPLAY " WS-COUNT   " WS-COUNT

            STOP RUN.

       END PROGRAM QG1CX037.

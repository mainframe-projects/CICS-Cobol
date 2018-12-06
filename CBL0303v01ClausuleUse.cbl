      ******************************************************************
      * Author     :
      * Date       :
      * Purpose    :
      *            :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX017.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-INTER         PIC 9(5) USAGE IS DISPLAY.
       01 WS-INTERES       PIC S9(5)V9(3) USAGE IS DISPLAY.
       01 WS-TEN           PIC 9(4)V9(2)   VALUE 80.
       01 WS-TEA           PIC 9(3)V9(3)   VALUE 107.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "RENAMES CLAUSE" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            MOVE 20025 TO WS-INTER
            DISPLAY "a) Requiere 5 bytes con signo"
            DISPLAY "WS-INTER 9(5)             : " WS-INTER

            MOVE -20020.501 TO WS-INTERES
            DISPLAY "b) Requiere 8 bytes con signo"
            DISPLAY "   la parte decimal no requiere un byte"
      *      DISPLAY "b) Requiere 8 bytes con signo la parte decimal no requiere un byte"
            DISPLAY "WS-INTERES S9(5)V9(3)     : " WS-INTERES
            DISPLAY "WS-TEN                    : " WS-TEN
            DISPLAY "WS-TEA                    : " WS-TEA
            MOVE 20140.822 TO WS-INTERES
            DISPLAY "WS-INTERES                : " WS-INTERES

            DISPLAY " "

            STOP RUN.
       END PROGRAM QG1CX017.

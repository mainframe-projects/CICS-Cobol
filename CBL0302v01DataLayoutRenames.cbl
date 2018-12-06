      ******************************************************************
      * Author     :
      * Date       :
      * Purpose    : El número de nivel 66 está reservado para renombrar.
      *            :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX016.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-INTERES.
       03 WS-TEN           PIC 9(4)V9(2)   VALUE 80.
       03 WS-TEA           PIC 9(3)V9(3)   VALUE 1078.
       66 WS-HAPPY-INTE    RENAMES WS-TEN THRU WS-TEA.

       01 WS-ARQUITECTURA.
       05 WS-HOST          PIC X(04)  VALUE "HOST".
       05 WS-ASO           PIC X(03)  VALUE 'ASO'.
       05 WS-APX           PIC X(03)  VALUE 'APX'.

       66 WS-HAPPY         RENAMES WS-HOST THRU WS-ASO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "RENAMES CLAUSE" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            DISPLAY "WS-INTERES     : " WS-INTERES
            DISPLAY "WS-TEN         : " WS-TEN
            DISPLAY "WS-TEA         : " WS-TEA
            DISPLAY "WS-HAPPY-INTE  : " WS-HAPPY-INTE
            DISPLAY "WS-TEN         : " WS-TEN
            DISPLAY "WS-TEA         : " WS-TEA
            DISPLAY " "
            DISPLAY "WS-ARQUITECTURA: " WS-ARQUITECTURA
            DISPLAY "WS-HOST        : " WS-HOST
            DISPLAY "WS-ASO         : " WS-ASO
            DISPLAY "WS-APX         : " WS-APX
            DISPLAY "WS-HAPPY       : " WS-HAPPY
            DISPLAY "WS-HOST        : " WS-HOST
            DISPLAY "WS-ASO         : " WS-ASO
            DISPLAY "WS-APX         : " WS-APX

            DISPLAY " "

            STOP RUN.
       END PROGRAM QG1CX016.

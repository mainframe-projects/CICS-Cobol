      ******************************************************************
      * Project    : Evaluación Cobol PC
      * Author     : ALDV
      * Date       : 28/11/2018
      * Purpose    : Representa un número flotante de doble precisión
      *              los datos se almacenan en formato hexadecimal
      *              COMP-2 no acepta la clausula PIC
      *              Dos palabra es igual a 8 bytes
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX020.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).

       01 WS-TEN           PIC 9(2)V9(3)  VALUE 80.
       01 WS-TEN1          USAGE IS COMP-2.

       01 WS-TEA           PIC 9(5)V9(3)  VALUE 107.
       01 WS-TEA1          COMP-2.

       01 WS-INTERES       PIC 9(10)V9(3)  VALUE 2002005.
       01 WS-INTERES1      COMP-2.

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
       END PROGRAM QG1CX020.

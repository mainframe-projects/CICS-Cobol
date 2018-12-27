      ******************************************************************
      * Project    : Evaluación Cobol PC
      * Author     : ALDV
      * Date       : 28/11/2018
      * Purpose    : El elemento de datos se almacena en formato decimal
      *              empaquetado
      *              Cada dígito ocupa medio byte (1 mordisco) y el
      *              signo se almacena en el mordisco más a la derecha.
      *
      * 01 WS-NUM PIC 9(n) USAGE IS COMP.
      * Number of bytes = n/2 (If n is even)
      * Number of bytes = n/2 + 1(If n is odd, consider only integer part)

      * 01 WS-NUM PIC 9(4) USAGE IS COMP-3 VALUE 21.
      * It requires 2 bytes of storage as each digit occupies half a byte.

      * 01 WS-NUM PIC 9(5) USAGE IS COMP-3 VALUE 21.
      * It requires 3 bytes of storage as each digit occupies half a byte
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX021.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).

       01 WS-TEN           PIC 9(2)V9(3)  VALUE 80.
       01 WS-TEN1          PIC S9(2)V9(3) USAGE IS COMP-3.

       01 WS-TEA           PIC 9(5)V9(3)  VALUE 107.
       01 WS-TEA1          PIC 9(5)V9(3)  COMP-3.

       01 WS-INTERES       PIC 9(10)V9(3)  VALUE 2002005.
       01 WS-INTERES1      PIC 9(10)V9(3)  COMP-3.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "COMP-3 CLAUSE" TO WS-TEMA

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
       END PROGRAM QG1CX021.

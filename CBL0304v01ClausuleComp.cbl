      ******************************************************************
      * Project    : Evaluación Cobol PC
      * Author     : ALDV
      * Date       : 27/11/2018
      * Purpose    : El elemento de datos se almacena en formato binario.
      *                01 WS-NUM PIC S9(n) USAGE IS COMP.
      *                If 'n' = 1 to 4, it takes 2 bytes.
      *                If 'n' = 5 to 9, it takes 4 bytes.
      *                If 'n' = 10 to 18, it takes 8 bytes.
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX018.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).

       01 WS-TEN           PIC 9(2)V9(2)  VALUE 80.
       01 WS-TEN1          PIC S9(2)V9(3) USAGE IS COMP.

       01 WS-TEA           PIC 9(5)V9(3)  VALUE 107.
       01 WS-TEA1          PIC S9(5)V9(3)  USAGE IS COMP.

       01 WS-INTERES       PIC 9(5)V9(2)  VALUE 2002005.
       01 WS-INTERES1      PIC S9(10)V9(3) USAGE IS COMP.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "RENAMES CLAUSE" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            MOVE WS-TEN TO WS-TEN1

            DISPLAY "it take 2 bytes"
            DISPLAY "WS-TEN             : " WS-TEN
            DISPLAY "WS-TEN1            : " WS-TEN1

            MOVE WS-TEA TO WS-TEA1
            DISPLAY "it take 4 bytes"
            DISPLAY "WS-TEA             : " WS-TEA
            DISPLAY "WS-TEA1            : " WS-TEA1

            MOVE WS-INTERES TO WS-INTERES1
            DISPLAY "it take 8 bytes"
            DISPLAY "WS-INTERES         : " WS-INTERES
            DISPLAY "WS-INTERES1        : " WS-INTERES1

            DISPLAY " "

            STOP RUN.
       END PROGRAM QG1CX018.

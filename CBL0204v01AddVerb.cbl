      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX010.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1        PIC 9(9) VALUE 20181.
       01 WS-NUM2        PIC 9(9) VALUE 152027.
       01 WS-NUM3        PIC 9(9) VALUE 1.
       01 WS-NUM4        PIC 9(9) VALUE 9.
       01 WS-NUMA        PIC 9(9) VALUE 2230.
       01 WS-NUMB        PIC 9(9) VALUE 22309.

       01 WS-NUMC        PIC 9(9).
       01 WS-NUMD        PIC 9(9).
       01 WS-NUMT        PIC 9(10).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ADD VERB"
            DISPLAY "NUM1       : " WS-NUM1
            DISPLAY "NUM2       : " WS-NUM2
            DISPLAY "NUM3       : " WS-NUM3
            DISPLAY "NUM4       : " WS-NUM4
            DISPLAY "NUMT       : " WS-NUMT
            DISPLAY " "

            ADD WS-NUM1 WS-NUM2 TO WS-NUM3, WS-NUM4
            ADD WS-NUMA, WS-NUMB, WS-NUMC TO WS-NUMD GIVING WS-NUMT.

            DISPLAY "NUM1       : " WS-NUM1
            DISPLAY "NUM2       : " WS-NUM2
            DISPLAY "NUM1 + WS-NUM2 + WS-NUM3 : " WS-NUM3
            DISPLAY "NUM4 + WS-NUM2 + WS-NUM4 : " WS-NUM4
            DISPLAY "NUMA       : " WS-NUMA
            DISPLAY "NUMB       : " WS-NUMB
            DISPLAY "NUMC       : " WS-NUMC
            DISPLAY "NUMD       : " WS-NUMD
            DISPLAY "NUMA + NUMB + NUMC + NUMD : " WS-NUMT
            STOP RUN.
       END PROGRAM QG1CX010.

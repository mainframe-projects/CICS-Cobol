      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX014.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1        PIC 9(9) VALUE 5.
       01 WS-NUM2        PIC 9(9) VALUE 2208.
       01 WS-NUM3        PIC 9(9) VALUE 3007.
       01 WS-NUM4        PIC 9(9) VALUE 911.
       01 WS-NUMA        PIC 9(9) VALUE 2907.
       01 WS-NUMB        PIC 9(9) VALUE 2306.

       01 WS-NUMC        PIC 9(9)  VALUE 6.
       01 WS-NUMD        PIC 9(9)  VALUE 4.
       01 WS-NUMT        PIC 9(10) VALUE 16.
       01 WS-RES1        PIC 9(5)  VALUE 0.
       01 WS-RES2        PIC 9(6)  VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY ".....[ COMPUTE VERB ]....."
            DISPLAY "NUM1       : " WS-NUM1
            DISPLAY "NUM2       : " WS-NUM2
            DISPLAY "NUM3       : " WS-NUM3
            DISPLAY "NUM4       : " WS-NUM4
            DISPLAY "NUMA       : " WS-NUMA
            DISPLAY "NUMB       : " WS-NUMB
            DISPLAY "NUMC       : " WS-NUMC
            DISPLAY "NUMD       : " WS-NUMD
            DISPLAY "NUMT       : " WS-NUMT
            DISPLAY "WS-RES1    : " WS-RES1
            DISPLAY "WS-RES2    : " WS-RES2
            DISPLAY " "

            COMPUTE WS-NUM4 = (WS-NUM1 + WS-NUM2) - (WS-NUM3 * WS-NUM4)

            DISPLAY "(WS-NUM1 + WS-NUM2) - (WS-NUM3 * WS-NUM4):" WS-NUM4

            COMPUTE WS-NUMD = (WS-NUM1 / WS-NUM2) - (WS-NUM3 - WS-NUM4)
            DISPLAY "(WS-NUM1 / WS-NUM2) - (WS-NUM3 - WS-NUM4):" WS-NUMD

            STOP RUN.
       END PROGRAM QG1CX014.

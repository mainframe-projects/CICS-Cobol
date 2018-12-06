      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX012.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1        PIC 9(9) VALUE 5.
       01 WS-NUM2        PIC 9(9) VALUE 22.
       01 WS-NUM3        PIC 9(9) VALUE 30.
       01 WS-NUM4        PIC 9(9) VALUE 9.
       01 WS-NUMA        PIC 9(9) VALUE 29.
       01 WS-NUMB        PIC 9(9) VALUE 23.

       01 WS-NUMC        PIC 9(9)  VALUE 6.
       01 WS-NUMD        PIC 9(9)  VALUE 4.
       01 WS-NUMT        PIC 9(10) VALUE 16.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY ".....[ MULTIPLY VERB ]....."
            DISPLAY "NUM1       : " WS-NUM1
            DISPLAY "NUM2       : " WS-NUM2
            DISPLAY "NUM3       : " WS-NUM3
            DISPLAY "NUM4       : " WS-NUM4
            DISPLAY "NUMA       : " WS-NUMA
            DISPLAY "NUMB       : " WS-NUMB
            DISPLAY "NUMC       : " WS-NUMC
            DISPLAY "NUMD       : " WS-NUMD
            DISPLAY "NUMT       : " WS-NUMT
            DISPLAY " "

            MULTIPLY WS-NUM1 BY WS-NUM3 WS-NUM4
            DISPLAY "WS-NUM1 * WS-NUM3 = WS-NUM3: " WS-NUM3
            DISPLAY "WS-NUM1 * WS-NUM4 = WS-NUM4 : " WS-NUM4
            MULTIPLY WS-NUM2 BY WS-NUM2 WS-NUM3 WS-NUM4
            DISPLAY "WS-NUM2 * WS-NUM2 = WS-NUM2 : " WS-NUM2
            DISPLAY "WS-NUM2 * WS-NUM3 = WS-NUM3 : " WS-NUM3
            DISPLAY "WS-NUM2 * WS-NUM4 = WS-NUM4 : " WS-NUM4
            MULTIPLY WS-NUMA BY WS-NUMD GIVING WS-NUMA.
            MULTIPLY WS-NUMB BY WS-NUMC GIVING WS-NUMB.
            MULTIPLY WS-NUMC BY WS-NUMB GIVING WS-NUMC.
            MULTIPLY WS-NUMD BY WS-NUMA GIVING WS-NUMT.
            DISPLAY "WS-NUMA * WS-NUMD = " WS-NUMA
            DISPLAY "WS-NUMB * WS-NUMC = " WS-NUMB
            DISPLAY "WS-NUMC * WS-NUMB = " WS-NUMC
            DISPLAY "WS-NUMD * WS-NUMA = " WS-NUMT

            STOP RUN.
       END PROGRAM QG1CX012.

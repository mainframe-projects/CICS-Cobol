      ******************************************************************
      * Author     :
      * Date       :
      * Purpose    :
      *            :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX015.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1        PIC 9(9) VALUE 5.
       01 WS-OLD         PIC X(10).
       01 WS-NEW1        REDEFINES WS-OLD PIC 9(8).
       01 WS-NEW2        REDEFINES WS-OLD PIC A(10).
       01 WS-FECHA.
       05 WS-YYYYMMDD    VALUE "20181122".
       10 WS-YEAR        PIC X(04).
       10 WS-MONTH       PIC X(02)  VALUE '06'.
       10 WS-DAY         PIC X(02)  VALUE '04'.
       05 WS-HAPPY       REDEFINES WS-YYYYMMDD PIC 9(8).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE "ALTAMIRA ASTA" TO WS-OLD

            DISPLAY ".....[ REDEFINES CLAUSE ]....."
            DISPLAY "=============================="
            DISPLAY "WS-NUM1        : " WS-NUM1
            DISPLAY "WS-OLD         : " WS-OLD
            DISPLAY "WS-NEW1        : " WS-NEW1
            DISPLAY "WS-NEW2        : " WS-NEW2
            DISPLAY "WS-FECHA       : " WS-FECHA
            DISPLAY "WS-YYYYMMDD    : " WS-YYYYMMDD
            DISPLAY "WS-YEAR        : " WS-YEAR
            DISPLAY "WS-MONTH       : " WS-MONTH
            DISPLAY "WS-DAY         : " WS-DAY
            DISPLAY "WS-HAPPY       : " WS-HAPPY
            DISPLAY " "
            MOVE "ARQUITECTURA DISTRIBUIDO - HOST" TO WS-FECHA
            DISPLAY "WS-FECHA       : " WS-FECHA
            DISPLAY "WS-YYYYMMDD    : " WS-YYYYMMDD
            DISPLAY "WS-YEAR        : " WS-YEAR
            DISPLAY "WS-MONTH       : " WS-MONTH
            DISPLAY "WS-DAY         : " WS-DAY
            DISPLAY "WS-HAPPY       : " WS-HAPPY

            MOVE "20181109" TO WS-FECHA
            DISPLAY "WS-FECHA       : " WS-FECHA
            DISPLAY "WS-YYYYMMDD    : " WS-YYYYMMDD
            DISPLAY "WS-YEAR        : " WS-YEAR
            DISPLAY "WS-MONTH       : " WS-MONTH
            DISPLAY "WS-DAY         : " WS-DAY
            DISPLAY "WS-HAPPY       : " WS-HAPPY
            STOP RUN.
       END PROGRAM QG1CX015.

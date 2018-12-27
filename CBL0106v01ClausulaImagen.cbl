      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QC1CX006.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 WS-NUM1  PIC S9(3)V9(2).
       01 WS-NUM2  PIC PP999.
       01 WS-NUM3  PIC S9(3)V9(2) VALUE -123.45.
       01 WS-NAME  PIC A(6) VALUE 'APX V5.8.13'.
       01 WS-ID    PIC X(5) VALUE 'APX$'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 156.955 TO WS-NUM1
           MOVE .54465 TO WS-NUM2
           DISPLAY "CLAUSULA IMAGEN"
           DISPLAY "NUM1   : " WS-NUM1
           DISPLAY "NUM2   : " WS-NUM2
           DISPLAY "NUM3   : " WS-NUM3
           MOVE -27.965 TO WS-NUM3
           DISPLAY "NUM3   : " WS-NUM3
           DISPLAY "NOMBRE : " WS-NAME
           DISPLAY "ID     : " WS-ID
           STOP RUN.
       END PROGRAM QC1CX006.

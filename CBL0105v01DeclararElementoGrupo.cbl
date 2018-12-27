      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QC1CX005.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01  WS_HOST     PIC A(30).
       01  WS_CANAL    PIC X(10).
       01  WS_FECHA.
           05 WS_DIA   PIC 9(2).
           05 WS_MES   PIC 9(2).
           05 WS_AAAA  PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "ARQUITECTURA ALTAMIRA " TO WS_HOST
           MOVE "BM" TO WS_CANAL
           MOVE "20181113" TO WS_FECHA
            DISPLAY "HOST : " WS_HOST
            DISPLAY "CANAL: " WS_CANAL
            DISPLAY "FECHA: " WS_FECHA
            STOP RUN.
       END PROGRAM QC1CX005.

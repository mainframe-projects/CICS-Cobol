      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QC1CX004.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
           01 WS_NAME      PIC A(30).
           01 WS_ID        PIC 9(8) VALUE '19980102'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Procedure Division"
            MOVE "ARQUITECTURA HOST " TO WS_NAME
            DISPLAY "ID   :" WS_ID
            DISPLAY "AREA :" WS_NAME
            STOP RUN.
       END PROGRAM QC1CX004.

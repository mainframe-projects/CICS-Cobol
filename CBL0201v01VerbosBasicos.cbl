      ******************************************************************
      * Author:
      * Date:
      * Purpose    : Verbo fecha DATE del sistema
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QC1CX007.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NAME-CANAL    PIC X(30).
       01 WS-FECHA-SISTEMA PIC X(10).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "MOSTRAR VERBOS"
            ACCEPT WS-NAME-CANAL
            ACCEPT WS-FECHA-SISTEMA FROM DATE
            DISPLAY "NOMBRE DE CANAL  : " WS-NAME-CANAL
            DISPLAY "FECHA DE SISTEMA : " WS-FECHA-SISTEMA
            STOP RUN.
       END PROGRAM QC1CX007.

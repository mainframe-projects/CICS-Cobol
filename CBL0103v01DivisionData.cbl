      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QC1CX003.
      *
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL
           SELECT QGCOMPRA ASSIGN TO INPUT
           ORGANIZATION SEQUENTIAL
           ACCESS IS SEQUENTIAL
       DATA DIVISION.
       FILE SECTION.
           FD QGCOMPRA.
           01 TXT-NOM          PIC X(50).

      *     WORKING-STORAGE SECTION.
      *     01 WS-ID            PIC 9(5).
      *     01 WS-NOM           PIC A(25).

      *     LOCAL-STORAGE SECTION.
      *     01 LS-CLASS PIC 9(3).

      *     LINKAGE SECTION.
      *     01 LS-ID PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Declarando File Control a QGCOMPRA"
            STOP RUN.
       END PROGRAM QC1CX003.

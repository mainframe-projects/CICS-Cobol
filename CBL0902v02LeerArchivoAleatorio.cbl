      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 03/01/2018
      * Purpose    : Es fundamental que el archivo a leer se encuentre
      * en el formato indexed.
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX051.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST004 ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX051.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS RANDOM
           RECORD KEY COD-CANAL
           FILE STATUS IS FS-HOST.

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD  HOST004.
       01  REG-HOST004.
           02 COD-CANAL    PIC X(03).
           02 TXT-ABRV     PIC X(10).
           02 TXT-NOM      PIC X(50).

       WORKING-STORAGE SECTION.
       01 WK-CANAL.
           02 WK-CODIGO        PIC X(03).
           02 WK-ABREVIATURA   PIC X(10).
           02 WK-DESCRIPCION   PIC X(50).

       02 WK-MENSAJE           PIC X(63).
       02 FS-HOST              PIC X(02).

       PROCEDURE DIVISION.
      *************************
       0000-MAIN.
            PERFORM 1000-INICIO
            PERFORM 2000-PROCESO
            PERFORM 4000-FINAL.
      *
       1000-INICIO.
            MOVE "ORGANIZATION INDEXED FOR ACCESS RANDOM" TO WK-MENSAJE
            DISPLAY WK-MENSAJE.
      *
       2000-PROCESO.
            DISPLAY 'PROCESO'
            OPEN INPUT HOST004
            DISPLAY 'ABRIR HOST004'
            MOVE '004' TO COD-CANAL
            DISPLAY 'COD-CANAL :' COD-CANAL
            READ HOST004 RECORD INTO WK-CANAL
               KEY IS COD-CANAL
               INVALID KEY DISPLAY 'INVALID KEY'
               NOT INVALID KEY DISPLAY WK-CANAL
            END-READ.
            CLOSE HOST004.
      *
       4000-FINAL.
           STOP RUN.

       END PROGRAM QG1CX051.

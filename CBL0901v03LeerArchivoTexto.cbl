      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 27/12/2018
      * Purpose    : Leer el archivo de texto s.
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX050.
      *
       ENVIRONMENT DIVISION.
      *************************
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST001 ASSIGN TO "QG1CX050.txt"
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL.

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD  HOST001.
       01  REG-HOST01.
           05 COD-CANAL    PIC X(03).
           05 TXT-ABRV     PIC X(10).
           05 TXT-NOM      PIC X(50).

       WORKING-STORAGE SECTION.
       01 WK-CANAL.
           02 WK-CODIGO        PIC X(03).
           02 WK-ABREVIATURA   PIC X(10).
           02 WK-DESCRIPCION   PIC X(50).

       02 WK-MENSAJE           PIC X(63).

       01 WS-EOF               PIC A(1).
       PROCEDURE DIVISION.
      *************************
       0000-MAIN.
            PERFORM 1000-INICIO
            PERFORM 2000-PROCESO
            PERFORM 4000-FINAL.
      *
       1000-INICIO.
            MOVE "DECLARACION DE ACCESO SECUENCIAL" TO WK-MENSAJE
            DISPLAY WK-MENSAJE
            MOVE 'Y' TO WS-EOF.
      *
       2000-PROCESO.
            OPEN INPUT HOST001
            DISPLAY "PROCESO OPEN "
            DISPLAY WS-EOF
            PERFORM UNTIL WS-EOF<>'Y'
               READ HOST001 INTO WK-CANAL
                   AT END MOVE 'Y' TO WS-EOF
                   NOT AT END DISPLAY WK-CANAL
            END-PERFORM
            DISPLAY " SALIO UNTIL "
            CLOSE HOST001.
      *
       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX050.

      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 04/01/2018
      * Purpose    : Convertir un archivo de texto a indexado
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX052.
      *
       ENVIRONMENT DIVISION.
      *************************
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST001 ASSIGN TO "QG1CX051.txt"
           LINE SEQUENTIAL.

           SELECT HOST002 ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX051.DAT"
           ORGANIZATION IS INDEXED
           RECORD KEY COD-CANAL OF REG-OUT.

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD  HOST001.
       01  REG-HOST01.
           05 COD-CANAL    PIC X(03).
           05 TXT-ABRV     PIC X(10).
           05 TXT-NOM      PIC X(50).

       FD HOST002.
       01  REG-OUT.
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
            MOVE "CONVERTIR ARCHIVO TEXTO A INDEXADO" TO WK-MENSAJE
            DISPLAY WK-MENSAJE
            MOVE 'Y' TO WS-EOF.
      *
       2000-PROCESO.
            OPEN INPUT HOST001, OUTPUT HOST002
            DISPLAY "PROCESO OPEN "
            DISPLAY WS-EOF
            PERFORM UNTIL EXIT
               READ HOST001 INTO REG-OUT
                   AT END EXIT PERFORM
               END-READ
               DISPLAY REG-OUT
               WRITE REG-OUT
            END-PERFORM
            DISPLAY " SALIO UNTIL "
            CLOSE HOST001, HOST002.
      *
       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX052.

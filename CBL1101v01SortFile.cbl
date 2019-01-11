      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 11/01/2019
      * Purpose    : Tres archivos se utilizan en el proceso de
      *  clasificación en COBOL
      * El archivo de entrada
      * El archivo de trabajo
      * El archivo de salida
      *
      * Copiar previamente el archivo QG1CX058.DAT a QG1CX059.DAT
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX059.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST-IN ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX059.DAT".
           SELECT HOST-WORK ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX059.WRK".
           SELECT HOST-OUT ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX059.OUT".

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD HOST-IN.
       01  REG-HOST-IN.
           02 COD-CANAL    PIC X(03).
           02 TXT-ABRV     PIC X(10).
           02 TXT-NOM      PIC X(50).

       SD HOST-WORK.
       01 REG-HOST-WK.
           03 COD-CANAL-W  PIC X(03).
           03 TXT-ABRV-W   PIC X(10).
           03 TXT-NOM-W    PIC X(50).

       FD HOST-OUT.
       01 REG-HOST-OUT.
           05 COD-CANAL-O  PIC X(03).
           05 TXT-ABRV-O   PIC X(10).
           05 TXT-NOM-O    PIC X(50).

       WORKING-STORAGE SECTION.
       01 WK-CANAL.
           02 WK-CODIGO        PIC X(03).
           02 WK-ABREVIATURA   PIC X(10).
           02 WK-DESCRIPCION   PIC X(50).

       77 WK-MENSAJE           PIC X(63).

       PROCEDURE DIVISION.
      *************************
       0000-MAIN.
            PERFORM 1000-INICIO
            PERFORM 2000-PROCESO
            PERFORM 4000-FINAL.
      *
       1000-INICIO.
            MOVE "SORT OF FILE" TO WK-MENSAJE
            DISPLAY WK-MENSAJE.
      *
       2000-PROCESO.
            DISPLAY 'START PROCESING'

            DISPLAY "Registro entrada : " REG-HOST-IN
            DISPLAY "Registro trabajo : " REG-HOST-WK
            DISPLAY "Registro salida  : " REG-HOST-OUT
            DISPLAY "Registro auxiliar: " WK-CANAL

            SORT HOST-WORK ON ASCENDING KEY COD-CANAL-O
            USING HOST-IN GIVING HOST-OUT

            DISPLAY 'END PROCESING'.

      *
       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX059.

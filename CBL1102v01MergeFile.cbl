      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 11/01/2019
      * Purpose    : Dos o mas archivos con secuencia identica se
      * combinan utilizando la instrucción MERGE.
      * Archivos utilizados en el proceso fusión:
      * Archivos de entrada
      * Archivos de trabajo
      * Archivos de salida
      *
      * Copiar previamente el archivo QG1CX059.DAT a QG1CX060.DAT
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX060.
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
           SELECT HOST-IN1 ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX060.DAT".
           SELECT HOST-WORK ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX060.WRK".
           SELECT HOST-OUT ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX060.OUT".

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD HOST-IN.
       01  REG-HOST-IN.
           02 COD-CANAL    PIC X(03).
           02 TXT-ABRV     PIC X(10).
           02 TXT-NOM      PIC X(50).

       FD HOST-IN1.
       01  REG-HOST-IN1.
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
            MOVE "MERGE OF FILE " TO WK-MENSAJE
            DISPLAY WK-MENSAJE.
      *
       2000-PROCESO.
            DISPLAY 'START PROCESING'

            DISPLAY "Registro entrada : " REG-HOST-IN
            DISPLAY "Registro entrada : " REG-HOST-IN1
            DISPLAY "Registro trabajo : " REG-HOST-WK
            DISPLAY "Registro salida  : " REG-HOST-OUT
            DISPLAY "Registro auxiliar: " WK-CANAL

            MERGE HOST-WORK ON ASCENDING KEY COD-CANAL-O
            USING HOST-IN, HOST-IN1 GIVING HOST-OUT

            DISPLAY 'END PROCESING'.

      *
       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX060.

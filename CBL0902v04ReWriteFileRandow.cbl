      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 08/01/2018
      * Purpose    : Regrabar los datos en un archivo aleatorio
      * Se utiliza para actualizar los registros. El archivo debe
      * abrirse en modo IO para operaciones de reescritura.
      * Solo se puede utilizar después de una operación de lectura
      * exitosa.
      *  Reescribir el verbo sobreescribe el último registro leído.
      * Observar la declaración del SELECT
      * Obtener una copia archivo QG1CX053.DAT por QG1CX054.DAT
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX054.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST004 ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX054.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS RANDOM
           RECORD KEY COD-CANAL OF REG-HOST004.
      *     FILE STATUS IS FS-HOST.

       DATA DIVISION.
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
            MOVE "REWRITE INDEXED FOR ACCESS RANDOM" TO WK-MENSAJE
            DISPLAY WK-MENSAJE.
      *
       2000-PROCESO.
            DISPLAY 'PROCESO'
            MOVE '022' TO WK-CODIGO
            MOVE 'ILI X' TO WK-ABREVIATURA
            MOVE 'ILI FINANTIAL XXSS' TO WK-DESCRIPCION
            DISPLAY WK-CANAL

            OPEN I-O HOST004
            MOVE WK-CANAL TO REG-HOST004

            READ HOST004
               KEY IS COD-CANAL
               INVALID KEY DISPLAY "KEY NO EXISTE"
            END-READ.

            DISPLAY REG-HOST004
            DISPLAY "Codigo canal : " COD-CANAL
            DISPLAY "Abreviatura  : " TXT-ABRV
            DISPLAY "Descripción  : " TXT-NOM

            REWRITE REG-HOST004
               INVALID KEY DISPLAY "INVALID KEY"
               NOT INVALID KEY DISPLAY "REGISTRO DE CANAL"
            END-REWRITE.
            CLOSE HOST004.
      *
       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX054.

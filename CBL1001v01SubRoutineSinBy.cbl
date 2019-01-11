      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 09/01/2018
      * Purpose    : Si se modifican los valores de las variables en el
      * programa llamado, sus nuevos valores se reflejarán en el
      * programa que llama.
      * Si no se especifica la cláusula BY , las variables siempre se
      * pasan por referencia.
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX056.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
      *************************
       WORKING-STORAGE SECTION.
       01 WK-CANAL.
           02 WK-CODIGO        PIC X(03).
           02 WK-ABREVIATURA   PIC X(10).
           02 WK-DESCRIPCION   PIC X(50).

       77 WK-MENSAJE           PIC X(63).
       77 WK-CBL-NAME          PIC X(31)
                               VALUE 'CBL1002v01Reference'.
       PROCEDURE DIVISION.
      *************************
       0000-MAIN.
            PERFORM 1000-INICIO
            PERFORM 2000-PROCESO
            PERFORM 4000-FINAL.
      *
       1000-INICIO.
            MOVE "SUBROUTINE REFERENCES" TO WK-MENSAJE
            DISPLAY WK-MENSAJE.
      *
       2000-PROCESO.
            DISPLAY 'PROCESO'
            MOVE '022' TO WK-CODIGO
            MOVE 'ILI' TO WK-ABREVIATURA
            MOVE 'INVESTMENT' TO WK-DESCRIPCION

            DISPLAY WK-CANAL
            DISPLAY "Codigo canal : " WK-CODIGO
            DISPLAY "Abreviatura  : " WK-ABREVIATURA
            DISPLAY "Descripción  : " WK-DESCRIPCION

            CALL WK-CBL-NAME USING WK-CODIGO, WK-ABREVIATURA,
                                   WK-DESCRIPCION

            DISPLAY "Codigo canal : " WK-CODIGO
            DISPLAY "Abreviatura  : " WK-ABREVIATURA
            DISPLAY "Descripción  : " WK-DESCRIPCION.
      *
       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX056.

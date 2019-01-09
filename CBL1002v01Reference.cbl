      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 09/01/2018
      * Purpose    : Program llamado por la routine
      *  CBL1001v01SubRoutineSinBy.cbl
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX057.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
      *************************
       LINKAGE SECTION.
       01 LS-CODIGO        PIC X(03).
       01 LS-ABREVIATURA   PIC X(10).
       01 LS-DESCRIPCION   PIC X(50).

       77 WK-MENSAJE           PIC X(63).

       PROCEDURE DIVISION USING LS-CODIGO,
                                LS-ABREVIATURA,
                                LS-DESCRIPCION.
      *************************
       0000-MAIN.
            PERFORM 1000-INICIO
            PERFORM 2000-PROCESO
            PERFORM 4000-FINAL.
      *
       1000-INICIO.
            MOVE "CALLED SUBROUTINE REFERENCES" TO WK-MENSAJE
            DISPLAY WK-MENSAJE.
      *
       2000-PROCESO.
            DISPLAY 'PROCESO'
            MOVE '030' TO LS-CODIGO
            MOVE 'ALX' TO LS-ABREVIATURA
            MOVE 'CHUCKI' TO LS-DESCRIPCION.

      *
       4000-FINAL.
           EXIT PROGRAM.
       END PROGRAM QG1CX057.

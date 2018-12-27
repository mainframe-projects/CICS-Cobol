      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 27/12/2018
      * Purpose    : Cuando el modo de acceso es RANDOM, el método de
      *  recuperación de registros cambia según la organización de
      *   archivos seleccionada
      * * Para los archivos indexados , se accede a los registros de
      *   acuerdo con el valor colocado en un campo clave que puede ser
      *   clave principal o alternativa.
      *    Puede haber uno o más índices alternativos.
      * * Para archivos relativos , los registros se recuperan a través
      *  de claves de registro relativas.
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX048.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST004 ASSIGN TO "HOST04.TXT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS RANDOM
           RECORD KEY COD-CANAL
           ALTERNATE RECORD KEY IS TXT-NOM.

           SELECT HOST005 ASSIGN TO "HOST05.TXT"
           ORGANIZATION IS RELATIVE
           ACCESS MODE IS RANDOM
           RELATIVE KEY IS COD-05.

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD  HOST004.
       01  REG-HOST04.
           02 COD-CANAL    PIC X(03).
           02 TXT-NOM      PIC X(10).

       FD  HOST005.
       01  REG-HOST05.
           02 COD-05       PIC X(03).
           02 TXT-05       PIC X(10).


       WORKING-STORAGE SECTION.
       01 WK-CANAL-UI.
           05 WK-LBL-CODIGO    PIC X(15) VALUE 'CODIGO : '.
           05 WK-LBL-ABREVIATURA.
               10 FILLER       PIC X(15) VALUE 'ABREVIATURA : '.
           05 WK-LBL-DESCRIPCION.
               10 FILLER       PIC X(15) VALUE 'DESCRIPCION : '.

       01 WK-CANAL.
           02 WK-CODIGO        PIC X(03).
           02 WK-ABREVIATURA   PIC X(10).
           02 WK-DESCRIPCION   PIC X(50).

       02 WK-MENSAJE           PIC X(63).

       PROCEDURE DIVISION.
      *************************
       0000-MAIN.
            PERFORM 1000-INICIO
            PERFORM 4000-FINAL.
      *
       1000-INICIO.
            DISPLAY "DECLARACION DE ACCESO ALEATORIO".

       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX048.

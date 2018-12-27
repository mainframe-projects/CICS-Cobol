      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 27/12/2018
      * Purpose    : El acceso dinámico admite el acceso secuencial y
      *  aleatorio en el mismo programa.
      * Con el acceso dinámico, una definición de archivo se usa para
      *  realizar un procesamiento tanto secuencial como aleatorio,
      *  como acceder a algunos registros en orden secuencial y otros
      *  registros por sus claves.
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX049.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST006 ASSIGN TO "HOST06.TXT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS COD-06
           ALTERNATE RECORD KEY IS TXT-06
           FILE STATUS IS EOF-06.

           SELECT HOST007 ASSIGN TO "HOST07.TXT"
           ORGANIZATION IS RELATIVE
           ACCESS MODE IS DYNAMIC
           RELATIVE KEY IS WS-RK-07
           FILE STATUS IS EOF-07.

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD  HOST006.
       01  REG-HOST06.
           02 COD-06       PIC X(03).
           02 TXT-06       PIC X(10).

       FD  HOST007.
       01  REG-HOST07.
           02 COD-07       PIC X(03).
           02 TXT-07       PIC X(10).

       WORKING-STORAGE SECTION.
       01 WS-RK-07             PIC 9(2).
       01 EOF-06               PIC 99.
       01 EOF-07               PIC 99.

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

       PROCEDURE DIVISION.
      *************************
       0000-MAIN.
            PERFORM 1000-INICIO
            PERFORM 4000-FINAL.
      *
       1000-INICIO.
            DISPLAY "DECLARACION DE ACCESO DINAMICO".

       4000-FINAL.
           STOP RUN.

       END PROGRAM QG1CX049.

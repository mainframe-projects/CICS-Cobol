      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 27/12/2018
      * Purpose    : Cuando el modo de acceso es secuencial, el método
      *  de recuperación de registros cambia según la organización de
      *   archivos seleccionada
      *  Para los archivos secuenciales, se accede a los registros en
      *   el mismo orden en que se insertaron.
      *  Para los archivos indexados, el parámetro utilizado para
      *   obtener los registros son los valores de clave de registro.
      *  Para archivos relativos, las claves de registro relativas se
      *   utilizan para recuperar los registros.
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX047.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST001 ASSIGN TO "HOST01.TXT"
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL.

           SELECT HOST002 ASSIGN TO "HOST02.TXT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS SEQUENTIAL
           RECORD KEY IS COD-02
           ALTERNATE RECORD KEY IS TXT-02.

           SELECT HOST003 ASSIGN TO "HOST03.TXT"
           ORGANIZATION IS RELATIVE
           ACCESS MODE IS SEQUENTIAL
           RELATIVE KEY IS COD-03.

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD  HOST001.
       01  REG-HOST01.
           05 COD-01      PIC X(03).
           05 TXT-01      PIC X(10).

       FD  HOST002.
       01  REG-HOST02.
           05 COD-02      PIC X(03).
           05 TXT-02      PIC X(10).

       FD  HOST003.
       01  REG-HOST03.
           05 COD-03      PIC X(03).
           05 TXT-03      PIC X(10).

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
            MOVE "DECLARACION DE ACCESO SECUENCIAL VARIOS ARCHIVOS"
              TO WK-MENSAJE
            DISPLAY WK-MENSAJE.

       4000-FINAL.
           STOP RUN.

       END PROGRAM QG1CX047.

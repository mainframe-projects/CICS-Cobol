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
       PROGRAM-ID. QG1CX046.
      *
       ENVIRONMENT DIVISION.
      *************************
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST001 ASSIGN TO "HOST01.TXT"
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL.

       DATA DIVISION.
      *************************
       FILE SECTION.
       FD  HOST001.
       01  REG-HOST01.
           05 COD-CANAL    PIC X(03).
           05 TXT-NOM      PIC X(10).

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
            DISPLAY "DECLARACION DE ACCESO SECUENCIAL".

       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX046.

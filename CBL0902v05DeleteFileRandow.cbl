      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 08/01/2018
      * Purpose    : Eliminar verbo solo se puede realizar en archivos
      *  indexados y relativos.
      * El archivo debe abrirse en modo IO.
      * En la organización de archivos secuenciales, los registros no se
      * pueden eliminar. El último registro leído por la instrucción de
      * lectura se elimina en caso de que el modo de acceso secuencial.
      * En el modo de acceso aleatorio, especifique la clave de registro
      * y luego realice la operación de eliminación.
      * Obtener una copia al archivo QG1CX054.DAT por QG1CX055.DAT
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX055.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HOST004 ASSIGN
                          TO "F:\BBVA04COBOL\03Desarrollo\QG1CX055.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS RANDOM
           RECORD KEY IS COD-CANAL
           FILE STATUS IS FS-HOST.

       DATA DIVISION.
      *************************
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
            MOVE "DELETE OF RECORD FOR ACCESS RANDOM" TO WK-MENSAJE
            DISPLAY WK-MENSAJE.
      *
       2000-PROCESO.
            DISPLAY 'PROCESO'
            MOVE '022' TO WK-CODIGO

            OPEN I-O HOST004
            MOVE WK-CANAL TO REG-HOST004

            DISPLAY REG-HOST004
            DISPLAY "Codigo canal : " COD-CANAL
            DISPLAY "Abreviatura  : " TXT-ABRV
            DISPLAY "Descripción  : " TXT-NOM

            DELETE HOST004 RECORD
               INVALID KEY DISPLAY "INVALID KEY"
               NOT INVALID KEY DISPLAY "REGISTRO ELIMINADO DE CANAL"
            END-DELETE.
            CLOSE HOST004.
      *
       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX055.

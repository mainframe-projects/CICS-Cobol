      ******************************************************************
      * Author     : ALDV
      * Date       : 01 OCT 2018
      * Purpose    : MOSTRAR MENSAJE DE CANAL DEL REGISTRO DE DATOS
      * Company    : ETG-BBVA
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1CX002.
       DATA DIVISION.
      * FILE SECTION.
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
            PERFORM 2000-MOSTRAR
            PERFORM 3000-PROCESO
            PERFORM 4000-FINAL.

      *
       1000-INICIO.
           INITIALIZE  WK-CANAL
                       WK-MENSAJE.

       2000-MOSTRAR.
           DISPLAY WK-LBL-CODIGO
           DISPLAY WK-LBL-ABREVIATURA
           DISPLAY WK-LBL-DESCRIPCION
           ACCEPT  WK-CODIGO
           ACCEPT  WK-ABREVIATURA
           ACCEPT  WK-DESCRIPCION.

       3000-PROCESO.
           STRING  WK-CODIGO DELIMITED SIZE
                   WK-ABREVIATURA DELIMITED SPACE
                   WK-DESCRIPCION DELIMITED SPACE
              INTO WK-MENSAJE.

           DISPLAY WK-MENSAJE.

       4000-FINAL.
           STOP RUN.
       END PROGRAM QG1CX002.

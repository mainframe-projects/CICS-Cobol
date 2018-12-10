      ******************************************************************
      * Author     : ALDV
      * Date       : 28 MAY 2018
      * Purpose    : MOSTRAR ENTRADA Y SALIDA DE DATOS CONCATENADO
      * Company    : ETG-BBVA
      ******************************************************************
       IDENTIFICATION DIVISION.
      *************************
       PROGRAM-ID. QG1C0010.
      *
       ENVIRONMENT DIVISION.
      *************************
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *
       DATA DIVISION.
      *************************
       WORKING-STORAGE SECTION.
      *
       01 WX-PREGUNTA-NOMBRE.
           05 WX-PN.
               10 FILLER    PIC X(20) VALUE 'INGRESA NOMBRE :'.
           05 WX-ENTRADA    PIC X(20).

       01 WX-RESPUESTA      PIC X(30).

       01 WX-HOLA           PIC X(5)  VALUE 'HOLA '.
       01 WX-SALUDO         PIC X(20).
       01 WX-RESTO-SALUDO   PIC X(15) VALUE ' SOY CICS...!'.
      *
       PROCEDURE DIVISION.
       0000-PRINCIPAL.
      *
           PERFORM 1000-INICIO
           PERFORM 2000-PROCESO
           PERFORM 3000-FINAL.
      *
       1000-INICIO.
           INITIALIZE WX-RESPUESTA
                      WX-SALUDO.
      *
       2000-PROCESO.
           PERFORM 2100-PEDIR-DATOS
           PERFORM 2200-CONCATENA-DATOS
           PERFORM 2300-ENVIA-DATOS.
      *
       2100-PEDIR-DATOS.
           DISPLAY WX-PN
           ACCEPT WX-ENTRADA.

       2200-CONCATENA-DATOS.
           MOVE WX-ENTRADA TO WX-SALUDO.

           STRING WX-HOLA DELIMITED SIZE
                  WX-SALUDO DELIMITED SPACE
                  WX-RESTO-SALUDO DELIMITED SIZE
             INTO WX-RESPUESTA.

      *
       2300-ENVIA-DATOS.

           DISPLAY WX-RESPUESTA.

       3000-FINAL.
           STOP RUN.

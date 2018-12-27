      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QC1CX002.
      *ESPECIFICAR ARCHIVOS DE ENTRADA Y SALIDA AL PROGRAMA.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      *UTILIZADO PARA COMPILAR EL PROGRAMA
           SOURCE-COMPUTER. IBM3270.
      *UTILIZADO PARA EJECUTAR EL PROGRAMA
           OBJECT-COMPUTER. IBM3270.
      *INFORMACIÓN SOBRE LOS ARCHIVOS QUE UTILIZA EL PROGRAMA
       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT APXT01_CANAL ASSIGN TO TCANAL
               ORGANIZATION IS SEQUENTIAL.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "HOST - ALTAMIRA - ANALISIS DE DIVISON ENVIRONMENT"
            STOP RUN.
       END PROGRAM QC1CX002.

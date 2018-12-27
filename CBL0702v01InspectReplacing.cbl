      ******************************************************************
      * Author     :
      * Date       : 14/12/2018
      * Purpose    : La opción de reemplazo se utiliza para reemplazar
      *              los caracteres de cadena..
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX036.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-N             PIC 9(2)  VALUE 0.
       01 WS-STR           PIC X(15) VALUE 'AEDCILIDVALDV'.
       01 WS-TOT           PIC 9(2)  VALUE 0.

       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "STATEMENT INSPECT" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            DISPLAY " OLD " WS-STR
            INSPECT WS-STR REPLACING ALL 'A' BY 'X'
            DISPLAY " NEW " WS-STR

            STOP RUN.

       END PROGRAM QG1CX036.

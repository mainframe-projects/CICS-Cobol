      ******************************************************************
      * Author     :
      * Date       : 13/12/2018
      * Purpose    : Inspeccionar verbo se usa para contar o reemplazar
      *              los caracteres en una cadena.
      * Las operaciones de cadena se pueden realizar en valores
      * alfanuméricos, numéricos o alfabéticos.
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX035.
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
            INSPECT WS-STR TALLYING WS-N FOR ALL CHARACTERS
            DISPLAY "NÚMERO CARACTERES : " WS-N
            INSPECT WS-STR TALLYING WS-TOT FOR ALL 'A'
            DISPLAY "NÚMERO LETRAS A " WS-TOT

            STOP RUN.

       END PROGRAM QG1CX035.

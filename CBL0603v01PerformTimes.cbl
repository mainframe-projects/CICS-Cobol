      ******************************************************************
      * Author     :
      * Date       : 10/12/2018
      * Purpose    :
      * Tectonics  : En 'tiempos de ejecución', se ejecutará un párrafo
      *  el número de veces especificado.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX032.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-NUM1          PIC 9(2) VALUE 0.
       01 WS-TOT           PIC 9(2) VALUE 20.

       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "PERFORM TIMES" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            PERFORM 0100-CONTADOR 3 TIMES.

            STOP RUN.

       0100-CONTADOR.
            DISPLAY 'WS-NUM1 = ' WS-NUM1
            ADD 1 TO WS-NUM1.

       END PROGRAM QG1CX032.

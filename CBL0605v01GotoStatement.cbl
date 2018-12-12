      ******************************************************************
      * Author     :
      * Date       : 12/12/2018
      * Purpose    :
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX034.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-N             PIC 9(2) VALUE 2.
       01 WS-TOT           PIC 9(2) VALUE 20.

       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "GOTO STATEMENT" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            DISPLAY 'IN A-PARA'
            GO TO B-PARA.

            B-PARA.
            DISPLAY 'IN B-PARA '.
            GO TO C-PARA D-PARA DEPENDING ON WS-N.

            C-PARA.
            DISPLAY 'IN C-PARA '.

            D-PARA.
            DISPLAY 'IN D-PARA '.

            STOP RUN.

       0100-CONTADOR.
            DISPLAY 'WS-N = ' WS-N.

       END PROGRAM QG1CX034.

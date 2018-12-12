      ******************************************************************
      * Author     :
      * Date       : 12/12/2018
      * Purpose    :
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX033.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-N             PIC 9(2) VALUE 0.
       01 WS-TOT           PIC 9(2) VALUE 20.

       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "PERFORM VARYING" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
      *     Inicia en uno y avanza de uno en uno, el tope es 20 y llega
      *     a 19
            DISPLAY " OF ONE TO ONE"
            PERFORM 0100-CONTADOR VARYING WS-N
                                  FROM 1 BY 1 UNTIL WS-N=WS-TOT
      *
      *     Inicia en dos y avanza de tres en tres hasta el 20
            DISPLAY " BEGIN TWO VARYING IN THREE"
            PERFORM 0100-CONTADOR VARYING WS-N
                                  FROM 2 BY 3 UNTIL WS-N>WS-TOT

            STOP RUN.

       0100-CONTADOR.
            DISPLAY 'WS-N = ' WS-N.

       END PROGRAM QG1CX033.

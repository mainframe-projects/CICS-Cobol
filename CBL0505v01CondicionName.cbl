      ******************************************************************
      * Author     :
      * Date       : 05/12/2018
      * Purpose    :
      * Tectonics  : Un nombre de condición es un nombre definido por
      *              el usuario
      *              Contiene un conjunto de valores especificados por
      *              el usuario. Se comporta como variables booleanas.
      *              Se definen con el número de nivel 88.
      *              No tendrá una cláusula PIC.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX026.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(100).
       01 WS-NUM           PIC 9(3).
       88 WS-PASS VALUES ARE 041 THRU 100.
       88 WS-FAIL VALUES ARE 000 THRU 40.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "CONDITION NAME" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            MOVE 65 TO WS-NUM
            DISPLAY WS-NUM

            IF WS-PASS THEN
               DISPLAY 'Passed with ' WS-NUM ' marks'.

            IF WS-FAIL
               DISPLAY 'FAILED with ' WS-NUM 'marks'.

            STOP RUN.
       END PROGRAM QG1CX026.

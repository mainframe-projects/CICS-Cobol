      ******************************************************************
      * Author     :
      * Date       : 14/12/2018
      * Purpose    : El verbo sin cadena se usa para dividir una cadena
      *              en múltiples sub-cadenas.
      *              Delimitado por la cláusula es obligatorio
      * Tectonics  :
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX038.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-STR           PIC X(30) VALUE 'ARQUITECTURA HOST Y APX'.
       01 WS-STR-OUT1      PIC A(16).
       01 WS-STR-OUT2      PIC A(4).
       01 WS-STR-OUT3      PIC A(1).
       01 WS-COUNT         PIC 99 VALUE 1.

       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "STATEMENT UNSTRING" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            UNSTRING WS-STR DELIMITED BY SPACE
                   INTO WS-STR-OUT1, WS-STR-OUT2, WS-STR-OUT3
                   WITH POINTER WS-COUNT
                   NOT ON OVERFLOW DISPLAY 'INGENIERIA ....!'
            END-UNSTRING.
            DISPLAY " WS-STR      : " WS-STR
            DISPLAY " WS-STR-OUT1 : " WS-STR-OUT1
            DISPLAY " WS-STR-OUT2 : " WS-STR-OUT2
            DISPLAY " WS-STR-OUT3 : " WS-STR-OUT3

            STOP RUN.

       END PROGRAM QG1CX038.

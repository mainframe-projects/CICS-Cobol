      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 26/12/2018
      * Purpose    : Search es un método de búsqueda lineal, que se
      *  utiliza para encontrar elementos dentro de la tabla.
      * Se puede realizar en tablas clasificadas y no clasificadas.
      * Se utiliza solo para tablas declaradas por frase de índice.
      * Comienza con el valor inicial del índice.
      * Si no se encuentra el elemento buscado, entonces el índice se
      * incrementa automáticamente en 1 y continúa hasta el final de la
      * tabla.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX044.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-APLICACION.
          05 WS-DATA       PIC X(10) OCCURS 16 TIMES INDEXED BY X.
       01 WS-SRCH          PIC X(10) VALUE 'MEDICINA'.

       01 WS-TABLE.
          05 WS-CANAL      OCCURS 4 TIMES INDEXED BY Y.
           10 WS-ROWS      PIC A(10) VALUE 'HOST'.
           10 WS-TITULO    OCCURS 5 TIMES INDEXED BY Z.
               15 WS-COLS  PIC X(06) VALUE 'APX'.


       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "SEARCH IS A LINEAR SEARCH METHOD" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "

           MOVE 'MEDICINA  90ABCDEFGHIJKLMN34GHIJKL56MNOPQRALDV15172027'
               TO WS-APLICACION

            PERFORM 100-ONE-DIMENSION

            STOP RUN.

       100-ONE-DIMENSION.
            SET X TO 1
            DISPLAY 'X = ' X
            DISPLAY 'WS-APLICACION : ' WS-APLICACION
            DISPLAY " WS-DATA (" X, ") = " WS-DATA(X)
            SEARCH WS-DATA
               AT END
                   DISPLAY 'MEDICINA - NOT FOUND IN TABLE'
               WHEN WS-DATA(X) = WS-SRCH
                   DISPLAY "MEDICINA - FOUND IN TABLE"

            END-SEARCH.

       END PROGRAM QG1CX044.

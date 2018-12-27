      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 27/12/2018
      * Purpose    : SEARCH All es un método de búsqueda binario
      * que se utiliza para encontrar elementos dentro de la tabla.
      * La tabla debe estar ordenada para la opción SEARCH ALL.
      * El índice no requiere inicialización.
      * En la búsqueda binaria, la tabla se divide en dos mitades y
      * determina en qué mitad del elemento buscado está presente.
      * Este proceso se repite hasta que se encuentra el elemento o se
      * alcanza el final.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX045.
      *
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-APLICACION.
          05 WS-DATA       OCCURS 16 TIMES ASCENDING
                           KEY IS WS-ID INDEXED BY X.
          10 WS-ID         PIC X(8).
          10 WS-NAME       PIC X(2).

       01 WS-SRCH          PIC X(10) VALUE 'MEDICINA90'.
       01 WS-REGISTRO.
          05 WS-CODIGO     PIC X(8).
          05 WS-NOMBRE     PIC X(2).
      *
       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "SEARCH ALL IS A BYNARY SEARCH METHOD" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "

            MOVE 'MEDICINA90ABCDEFGHIJKLMN34GHIJKL56MNOPQRALDV15172027'
               TO WS-APLICACION

            PERFORM 050-SHOW-BEFORE
            PERFORM 100-ONE-BUSCAR
            PERFORM 150-SHOW-AFTER

            STOP RUN.

       050-SHOW-BEFORE.
           DISPLAY 'WS-APLICACION : ' WS-APLICACION
           DISPLAY " WS-DATA (" 1, ") = " WS-DATA(1)
           DISPLAY " WS-DATA (" 2, ") = " WS-DATA(2)
           DISPLAY " WS-ID (" 1, ") = " WS-ID(1)
           DISPLAY " WS-NAME (" 2, ") = " WS-NAME(1)
           DISPLAY " WS-DATA (" 16, ") = " WS-DATA(16).

       100-ONE-BUSCAR.

            SEARCH WS-DATA
               AT END
                   DISPLAY 'MEDICINA - NOT FOUND IN TABLE'
               WHEN WS-DATA(X) = WS-SRCH
                   DISPLAY "MEDICINA - FOUND IN TABLE"
                   MOVE WS-ID(X) TO WS-CODIGO
                   MOVE WS-NAME(X) TO WS-NOMBRE
            END-SEARCH.

       150-SHOW-AFTER.
           DISPLAY "Record found :" WS-REGISTRO.
           DISPLAY "Código : " WS-CODIGO.
           DISPLAY "Nombre : " WS-NOMBRE.

       END PROGRAM QG1CX045.

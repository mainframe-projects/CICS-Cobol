      ******************************************************************
      * Project    : Evaluation COBOL PC
      * Author     : ALDV
      * Date       : 26/12/2018
      * Purpose    : La declaración de set se usa para cambiar el valor
      *  del índice.
      * Set verbo se usa para inicializar, incrementar o disminuir el
      *  valor del índice.
      * Se utiliza con Buscar y Buscar todos para ubicar elementos en
      *  la tabla.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX043.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-APLICACION.
          05 WS-DATA       OCCURS 9 TIMES INDEXED BY X.
             10 WS-FILA    PIC X(10).
       01 WS-TABLE.
          05 WS-CANAL      OCCURS 4 TIMES INDEXED BY Y.
           10 WS-ROWS      PIC A(10) VALUE 'HOST'.
           10 WS-TITULO    OCCURS 5 TIMES INDEXED BY Z.
               15 WS-COLS  PIC X(06) VALUE 'APX'.


       PROCEDURE DIVISION.
       0000-MAIN.
            MOVE "SET A INDICE OF TABLE TWO DIMENSION" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            DISPLAY " WS-APLICACION  : " WS-APLICACION
            DISPLAY " WS-TABLE       : " WS-TABLE

           MOVE '1234567890ABCDEFGHIJKLMN34GHIJKL56MNOPQRALDV15172027'
               TO WS-APLICACION
            DISPLAY 'X = ' X, ' Y=' Y, ' Z=' Z
            DISPLAY ' '

            SET X TO 3
            DISPLAY 'X = ' X
            PERFORM 100-ONE-DIMENSION VARYING X FROM 1 BY 1 UNTIL X > 9

            MOVE '1234567890ABCDEFGHIJKLMN34GHIJKL56MNOPQRALDV15172027E'
               TO WS-TABLE
            DISPLAY "NEW WS-TABLE    : " WS-TABLE
            SET Y Z TO 2
            DISPLAY 'Y = ' Y
            PERFORM 200-TWO-DIMENSION VARYING Y FROM 1 BY 1 UNTIL Y > 4

            STOP RUN.

       100-ONE-DIMENSION.

            DISPLAY " WS-FILA    : " X, ") = " WS-FILA(X).

       200-TWO-DIMENSION.
           PERFORM 300-MOSTRAR VARYING Z FROM 1 BY 1 UNTIL Z > 5.

       300-MOSTRAR.
           DISPLAY "WS-ROWS (" Y, " ) =  " WS-ROWS(Y)
           DISPLAY "WS-COLS (" Y, ", ", Z ") = " WS-COLS(Y,Z).

       END PROGRAM QG1CX043.

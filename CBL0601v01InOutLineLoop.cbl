      ******************************************************************
      * Author     :
      * Date       : 06/12/2018
      * Purpose    :
      * Tectonics  : in line
      *              Las declaraciones dentro de PERFORM se ejecutarán
      *               hasta que se alcance END-PERFORM.
      * out line
      * Una declaración se ejecuta en un párrafo y luego el control se
      *  transfiere a otro párrafo o sección.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX030.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-NUM1          PIC S9(2) VALUE 20.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "IN LINE / OUT LINE FOR LOOP" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
            DISPLAY WS-NUM1.
      * in line
            A-PARA.
               PERFORM
                   DISPLAY 'IN A-PARA'
               END-PERFORM.
      * out line
            PERFORM C-PARA THRU E-PARA.

            B-PARA.
               DISPLAY 'IN B-PARA'.

           STOP RUN.

            C-PARA.
               DISPLAY 'OUT C-PARA'.

            D-PARA.
               DISPLAY 'OUT D-PARA'.

            E-PARA.
               DISPLAY 'OUT E-PARA'.


       END PROGRAM QG1CX030.

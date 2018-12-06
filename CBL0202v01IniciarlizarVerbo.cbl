      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX008.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOMBRE        PIC X(30) VALUE "ANCASH".
       01 WS-ID            PIC 9(6)  VALUE "152027".
       01 WS-DIRECCION     PIC X(40).
       01 WS-NUMERO        PIC X(06) VALUE "317".
       01 WS-CIUDAD        PIC X(20) VALUES "CABANA".
       01 WS-POSTAL        PIC X(20) VALUE "043".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Inicializar verbo"
            MOVE "JR. PALMA DE MALLORCA" TO WS-DIRECCION
            INITIALIZE WS-NOMBRE, WS-DIRECCION.
            INITIALIZE WS-ID REPLACING NUMERIC DATA BY "52230"
            DISPLAY "Nombre        : " WS-NOMBRE
            DISPLAY "Identificador : " WS-ID
            DISPLAY "Dirección     : " WS-DIRECCION
            DISPLAY "Número        : " WS-NUMERO
            DISPLAY "Ciudad        : " WS-CIUDAD
            DISPLAY "Postal        : " WS-POSTAL
            STOP RUN.
       END PROGRAM QG1CX008.

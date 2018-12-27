      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX009.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOMBRE        PIC X(30) VALUE "ANCASH".
       01 WS-ID            PIC 9(6)  VALUE 152027.
       01 WS-DIRECCION     PIC X(40).
       01 WS-NUMERO        PIC X(06) VALUE "317".
       01 WS-CIUDAD        PIC X(20) VALUES "CABANA".
       01 WS-POSTAL        PIC X(20) VALUE "043".
       01 WS-PRESTAMO.
           05 WS-CAPITAL   PIC 9(12).
           05 WS-INTERES   PIC 9(10).
           05 WS-FACTOR    PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Inicializar verbo"
            MOVE "JR. PALMA DE MALLORCA" TO WS-DIRECCION
            INITIALIZE WS-NOMBRE, WS-DIRECCION.
            INITIALIZE WS-ID REPLACING NUMERIC DATA BY "52230"
            MOVE 12847.93 TO WS-CAPITAL
            MOVE 847493834 TO WS-INTERES
            MOVE 0.873839393 TO WS-FACTOR
            DISPLAY "Nombre        : " WS-NOMBRE
            DISPLAY "Identificador : " WS-ID
            DISPLAY "Dirección     : " WS-DIRECCION
            DISPLAY "Número        : " WS-NUMERO
            DISPLAY "Ciudad        : " WS-CIUDAD
            DISPLAY "Postal        : " WS-POSTAL
            DISPLAY "Capital       : " WS-CAPITAL
            DISPLAY "Interés       : " WS-INTERES
            DISPLAY "Factor        : " WS-FACTOR
            STOP RUN.
       END PROGRAM QG1CX009.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUMA.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
        SPECIAL-NAMES.
         DECIMAL-POINT IS COMMA.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 WS-ARR                 PIC 9(2)   OCCURS 10 TIMES.
         
          77 WS-I                   PIC 9(2).
          77 WS-J                   PIC 9(2).

          77 WS-SUMA                PIC 9(1).
          77 WS-RESTA               PIC 9(1).
          77 WS-DIV-DECIMAL         PIC 9(2)v99.
          77 WS-DIV                 PIC 9(2).
          77 WS-MULTI               PIC 9(2).

          77 WS-EDIT-DIV-DECIMAL    PIC ZZv99.

       PROCEDURE DIVISION.
             PERFORM VARYING WS-I FROM 1 BY 2 UNTIL WS-I > 19
               ADD 1 TO WS-J
               MOVE WS-I TO WS-ARR(WS-J)
             END-PERFORM.

             ADD       WS-ARR(1)  TO WS-ARR(2)    GIVING WS-SUMA.
             MULTIPLY  WS-ARR(3)  BY WS-ARR(4)    GIVING WS-MULTI.
             DIVIDE    WS-ARR(5)  BY WS-ARR(6)    GIVING WS-DIV-DECIMAL.
             DIVIDE    WS-ARR(7)  BY WS-ARR(8)    GIVING WS-DIV.
             SUBTRACT  WS-ARR(9)  FROM WS-ARR(10) GIVING WS-RESTA.

             MOVE WS-DIV-DECIMAL TO WS-EDIT-DIV-DECIMAL.

             DISPLAY "SUMA                 " WS-SUMA.
             DISPLAY "MULTIPLICAR          " WS-MULTI.
             DISPLAY "DIVIDIR CON DECIMAL  " WS-EDIT-DIV-DECIMAL.
             DISPLAY "DIVIDIR              " WS-DIV.
             DISPLAY "RESTA                " WS-RESTA.
           GOBACK.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. JUBI-LARSE.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
      * WS-HS     = HORA
      * WS-SAL    = salario x hora
      * WS-SAL-EX = salario extra
          77 A PIC 9(2) VALUE ZEROS.
          77 WS-HS PIC 9(2) VALUE 8.
          77 WS-SAL PIC 9(3) VALUE 100.
          77 WS-SAL-EX PIC 9(3) VALUE 150.

          77 WS-TOTAL PIC 9(4) VALUE ZEROS.
          77 WS-TOTAL-EX PIC 9(4) VALUE ZEROS.
          77 WS-RES PIC 9(4) VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "HS laburadas"
           ACCEPT A.

           IF A > 0 AND A <= WS-HS
             MULTIPLY A BY WS-SAL GIVING WS-TOTAL
             DISPLAY WS-TOTAL

           ELSE
             IF A > WS-HS
                MULTIPLY A BY WS-SAL     GIVING WS-TOTAL
                MULTIPLY A BY WS-SAL-EX  GIVING WS-TOTAL-EX
                ADD WS-TOTAL TO WS-TOTAL-EX GIVING WS-RES
                DISPLAY WS-RES
             ELSE
                DISPLAY "Escribio un numero no valido o una letra"
             END-IF
           END-IF.

           GOBACK.

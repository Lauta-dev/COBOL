      * 1. Dados 3 números determinar el mayor e informar por
      * pantalla el resultado

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUM-ALEA-TORIO.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 NUM1 PIC 9(2) VALUE ZEROS.
          77 NUM2 PIC 9(2) VALUE ZEROS.
          77 NUM3 PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Primer numero".
           ACCEPT NUM1.

           DISPLAY "Segundo numero".
           ACCEPT NUM2.

           DISPLAY "Tercer numero".
           ACCEPT NUM3.

           IF NUM1 > NUM2 AND NUM1 > NUM3
              DISPLAY NUM1 ' es mayor que ' NUM2
              DISPLAY "if 1"
           ELSE

              IF NUM2 > NUM1 AND NUM2 > NUM3
                 DISPLAY NUM2 ' es mayor que ' NUM1 " y " NUM3
                 DISPLAY "if 2"
              ELSE

                IF NUM3 > NUM1 AND NUM3 > NUM2
                   DISPLAY NUM3 ' es mayor que ' NUM1 ' y ' NUM2
                   DISPLAY "if 3"
                ELSE
                   DISPLAY "Final"
                END-IF

              END-IF
           END-IF.
           GOBACK.

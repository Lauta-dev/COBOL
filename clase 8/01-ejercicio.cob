      * 1. Dados 2 números determinar el mayor e informar por
      * pantalla el resultado

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUM-ALEA-TORIO.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 NUM1 PIC 9(2) VALUE ZEROS.
          77 NUM2 PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Primer numero".
           ACCEPT NUM1.

           DISPLAY "Segundo numero".
           ACCEPT NUM2.

           IF NUM1 > NUM2
              display NUM1 ' es mayor que ' NUM2
           ELSE

              IF NUM1 < NUM2
                DISPLAY NUM1 ' es menor que ' NUM2
              ELSE
                DISPLAY 'No dio un numero'
              END-IF
           
           END-IF

           GOBACK.

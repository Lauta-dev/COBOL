       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIFE.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 NUM1 PIC 9(2) VALUE ZEROS.
          77 NUM2 PIC 9(2) VALUE ZEROS.

          77 SUMA PIC 9(2) VALUE ZEROS.
          77 DIFE PIC 9(2) VALUE ZEROS.
                                 
       PROCEDURE DIVISION.
             DISPLAY "NUM1"
             ACCEPT NUM1

             DISPLAY " "

             DISPLAY "NUM2"
             ACCEPT NUM2

             ADD NUM1 TO NUM2 GIVING SUMA
             SUBTRACT NUM1 FROM NUM2 GIVING DIFE

             DISPLAY "La suma es: " SUMA
             DISPLAY "La diferencia es: " DIFE


           GOBACK.
  
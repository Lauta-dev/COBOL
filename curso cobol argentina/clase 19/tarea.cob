       IDENTIFICATION DIVISION.
       PROGRAM-ID. Divisiones.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 MILLON PIC 9(12) VALUE ZEROS.

          77 RES1 PIC 9(7) VALUE ZEROS.
          77 RES2 PIC 9(7) VALUE ZEROS.
          77 RES3 PIC 9(7) VALUE ZEROS.
          77 RES4 PIC 9(7) VALUE ZEROS.
          77 RES5 PIC 9(7) VALUE ZEROS.

          77 PART1 PIC $$$$99,999.99.
          77 PART2 PIC $$$$99,999.99.
          77 PART3 PIC $$$$99,999.99.
          77 PART4 PIC $$$$99,999.99.
          77 PART5 PIC $$$$99,999.99.

       PROCEDURE DIVISION.
             DISPLAY "De un valor de millones"
             ACCEPT MILLON

             DIVIDE MILLON BY 15.5 GIVING RES1
             DIVIDE MILLON BY 10.5 GIVING RES2
             DIVIDE MILLON BY 50   GIVING RES3
             DIVIDE MILLON BY 14   GIVING RES4
             DIVIDE MILLON BY 10   GIVING RES5

             MOVE RES1 TO PART1
             MOVE RES2 TO PART2
             MOVE RES3 TO PART3
             MOVE RES4 TO PART4
             MOVE RES5 TO PART5

             DISPLAY "1 " PART1
             DISPLAY "2 " PART2
             DISPLAY "3 " PART3
             DISPLAY "4 " PART4
             DISPLAY "5 " PART5
           GOBACK.


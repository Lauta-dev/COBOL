       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCU-LAR-IVA.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 IVA            PIC 9V99      VALUE 0.21.
          77 PRODUCT        PIC 9(4)V99   VALUE ZEROS.
          77 PRECIO-FINAL   PIC 9(4)V99   VALUE ZEROS.
          77 PRECIO         PIC $$99.99   VALUE ZEROS.
                                 
       PROCEDURE DIVISION.
             DISPLAY "PRECIO"

             ACCEPT PRODUCT.
             MULTIPLY PRODUCT BY IVA GIVING PRECIO-FINAL
             MOVE PRECIO-FINAL TO PRECIO

             DISPLAY " "
             DISPLAY "PRECIO FINAL: " PRECIO
           GOBACK.
  
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARCIAL.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 NOTA-BASE PIC 9(2) VALUE 7.
          77 NOTA-MAX PIC 9(2) VALUE 10.

          77 NOTA-EXAMEN PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
             DISPLAY "---------------------------------"
             DISPLAY "Nota del parcial: "
             ACCEPT NOTA-EXAMEN
             DISPLAY "---------------------------------"
             DISPLAY " "
           
             IF NOTA-EXAMEN >= NOTA-BASE AND NOTA-EXAMEN <= NOTA-MAX
                DISPLAY "---------------------------------"
                DISPLAY "Aprobo"
                DISPLAY "---------------------------------"
             ELSE
                DISPLAY "-------------------------------------"
                DISPLAY "no aprobo o dio un valor incorrecto"
                DISPLAY "-------------------------------------"
             END-IF
           GOBACK.
  
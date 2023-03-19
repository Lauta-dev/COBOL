       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOSE.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
         01 VAR.
           02 NUM1 PIC 9(2) VALUE 6.
           02 NUM2 PIC 9(2) VALUE 3.
           02 res PIC 9(2).

         77 A PIC A(2) VALUE "as".


       PROCEDURE DIVISION.

      * rutinas o parrafos
       10000-SUMA.
             ADD num1 TO num2 GIVING res.

       20000-res.
             DISPLAY res.
             DISPLAY A.
           
           GOBACK.

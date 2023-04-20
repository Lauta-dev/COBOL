       IDENTIFICATION DIVISION.
       PROGRAM-ID. hola.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          01 TABLES.
           02 FILLER PIC X(10) VALUE "M".
           02 FILLER PIC X(10) VALUE "L".
           02 FILLER PIC X(10) VALUE "M".
           02 FILLER PIC X(10) VALUE "J".
           02 FILLER PIC X(10) VALUE "V".
           02 FILLER PIC X(10) VALUE "S".
          01 T REDEFINES TABLES.
           02 EL PIC X(10) OCCURS 7 TIMES INDEXED BY L.

          77 I PIC 9(1).
       PROCEDURE DIVISION.
             DISPLAY EL(1)
             SET L TO 1.
             SEARCH EL
               AT END DISPLAY "NO ENCONTRADO"
               WHEN EL(L) = "L"
                 DISPLAY "SI ENCONTRADO"
             END-SEARCH.

           GOBACK.

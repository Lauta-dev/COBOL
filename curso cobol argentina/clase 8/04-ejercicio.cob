       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUM-ALEA-TORIO.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.

         77 WS-BASE        PIC 9(3)         VALUE 500.
         77 WS-PRECIO      PIC 9(3)V99      VALUE 20.20.
         77 WS-TELA        PIC 9(3)         VALUE 200.
         77 WS-EXPE-CIAL   PIC 9(3)         VALUE 336.

         77 WS-SUMA        PIC 9(3)V99      VALUE ZEROS.
         77 WS-USER-PAG    PIC 9(3)V99      VALUE ZEROS.
         77 WS-TOTAL       PIC $$9999.99    VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "PAG"
           ACCEPT WS-USER-PAG

           IF WS-USER-PAG > 100 AND WS-USER-PAG < 300
              MULTIPLY WS-USER-PAG BY WS-PRECIO GIVING WS-SUMA
              ADD WS-SUMA, WS-BASE GIVING WS-TOTAL
              DISPLAY "TOTAL " WS-TOTAL
           ELSE

              IF WS-USER-PAG > 300 AND WS-USER-PAG < 600
                 MULTIPLY WS-USER-PAG BY WS-PRECIO GIVING WS-SUMA
                 ADD WS-SUMA, WS-BASE, WS-TELA GIVING WS-TOTAL
                 DISPLAY "TOTAL " WS-TOTAL
              ELSE

                 IF WS-USER-PAG > 600
                   MULTIPLY WS-USER-PAG BY WS-PRECIO GIVING WS-SUMA
                   ADD WS-SUMA, WS-BASE, WS-TELA,
                     WS-EXPE-CIAL GIVING WS-TOTAL
                   DISPLAY "TOTAL " WS-TOTAL
                 ELSE

                    DISPLAY WS-USER-PAG " No es valido."
                 END-IF
              END-IF
           END-IF

           GOBACK.

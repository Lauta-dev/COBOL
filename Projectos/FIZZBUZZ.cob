       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZ-BUZZ.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 WS-I PIC 9(3).
          77 WS-FIZZ PIC 9(3).
          77 WS-BUZZ PIC 9(3).
          77 WS-FIZZ-BUZZ PIC 9(3).

          77 W PIC 9(3).
          77 WW PIC 9(3).
          77 WWW PIC 9(3).


       PROCEDURE DIVISION.

             PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 20
               DIVIDE WS-I BY 3 GIVING WS-FIZZ REMAINDER W
               DIVIDE WS-I BY 5 GIVING WS-BUZZ REMAINDER WW
               DIVIDE WS-I BY 15 GIVING WS-FIZZ-BUZZ REMAINDER WWW

               IF w = 0
                 DISPLAY "FIZZ -" WS-I
               ELSE
                 IF WW = 0
                    DISPLAY "BUZZ -" WS-I
                 ELSE
                    IF WS-FIZZ-BUZZ = 0
                       DISPLAY "FIZZ-BUZZ - " WS-I
                    END-IF
                 END-IF
               END-IF

             END-PERFORM
           GOBACK.

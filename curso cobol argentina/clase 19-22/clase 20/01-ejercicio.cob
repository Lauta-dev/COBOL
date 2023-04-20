       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOTAS.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
      *-------->                      ARRAY                    <--------*
          01 WS-TURNO-MAHANA   PIC 9(2)   OCCURS 5 TIMES.
          01 WS-TURNO-TARDE    PIC 9(2)   OCCURS 5 TIMES.
          01 WS-TURNO-NOCHE    PIC 9(2)   OCCURS 5 TIMES.

          77 WS-I  PIC 9(2).
          77 WS-L  PIC 9(2).
          77 WS-R  PIC 9(2).

      *-------->                    VARIABLE                   <--------*

          77 WS-NOTA              PIC 9(2).

          77 WS-PROME-MAHANA       PIC 9(2).
          77 WS-PROME-TARDE        PIC 9(2).
          77 WS-PROME-NOCHE        PIC 9(2).
          77 WS-PROME-TOTAL        PIC 9(2).

          77 WS-PROME-MAHANA-TOTAL        PIC 9(2).
          77 WS-PROME-TARDE-TOTAL        PIC 9(2).
          77 WS-PROME-NOCHE-TOTAL        PIC 9(2).

          77 WS-EDIT-NOTA-TOTAL   PIC ZZ999.

       PROCEDURE DIVISION.
            PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 15
               IF WS-I <= 5
                 DISPLAY "----------------------"
                 DISPLAY "Nota turno mañana "
                 DISPLAY "----------------------"
                 ACCEPT WS-NOTA

                 IF WS-NOTA >= 1 AND WS-NOTA <= 10
                   MOVE WS-NOTA TO WS-TURNO-MAHANA(WS-I)
                 ELSE
                   DISPLAY "Numero no valido o agrego una letra"
                   GOBACK
                 END-IF
               END-IF

              DISPLAY " "

              IF WS-I >= 5 AND <= 10
                 DISPLAY "----------------------"
                 DISPLAY "Nota turno tarde "
                 DISPLAY "----------------------"
                 ACCEPT WS-NOTA

                 IF WS-NOTA >= 1 AND WS-NOTA <= 10
                   ADD 1 TO WS-L
                   MOVE WS-NOTA TO WS-TURNO-TARDE(WS-L)
                 ELSE
                   DISPLAY "Numero no valido o agrego una letra"
                   GOBACK
                 END-IF
              END-IF

              DISPLAY " "

              IF WS-I >= 10 AND <= 15
                 DISPLAY "----------------------"
                 DISPLAY "Nota turno noche"
                 DISPLAY "----------------------"
                 ACCEPT WS-NOTA

                 IF WS-NOTA >= 1 AND WS-NOTA <= 10
                   ADD 1 TO WS-R
                   MOVE WS-NOTA TO WS-TURNO-NOCHE(WS-R)
                 ELSE
                   DISPLAY "Numero no valido o agrego una letra"
                   GOBACK
                 END-IF
              END-IF
            END-PERFORM.

            DISPLAY " ".

            DISPLAY "   Nota turno Mañana".
            DISPLAY WS-TURNO-MAHANA(1).
            DISPLAY WS-TURNO-MAHANA(2).
            DISPLAY WS-TURNO-MAHANA(3).
            DISPLAY WS-TURNO-MAHANA(4).
            DISPLAY WS-TURNO-MAHANA(5).

            DISPLAY "   Nota turno Tarde".
            DISPLAY WS-TURNO-TARDE(1).
            DISPLAY WS-TURNO-TARDE(2).
            DISPLAY WS-TURNO-TARDE(3).
            DISPLAY WS-TURNO-TARDE(4).
            DISPLAY WS-TURNO-TARDE(5).

            DISPLAY "   Nota turno Noche".
            DISPLAY WS-TURNO-NOCHE(1).
            DISPLAY WS-TURNO-NOCHE(2).
            DISPLAY WS-TURNO-NOCHE(3).
            DISPLAY WS-TURNO-NOCHE(4).
            DISPLAY WS-TURNO-NOCHE(5).

            COMPUTE WS-PROME-MAHANA = (
                WS-TURNO-MAHANA(1) + WS-TURNO-MAHANA(2) +
                WS-TURNO-MAHANA(3) + WS-TURNO-MAHANA(4) +
                WS-TURNO-MAHANA(5)
               ).
            COMPUTE WS-PROME-MAHANA-TOTAL = WS-PROME-MAHANA / 5


            COMPUTE WS-PROME-TARDE = (
                WS-TURNO-TARDE(1) + WS-TURNO-TARDE(2) +
                WS-TURNO-TARDE(3) + WS-TURNO-TARDE(4) +
                WS-TURNO-TARDE(5)
               ).
            COMPUTE WS-PROME-TARDE-TOTAL = WS-PROME-TARDE / 5


            COMPUTE WS-PROME-NOCHE = (
                WS-TURNO-NOCHE(1) + WS-TURNO-NOCHE(2) +
                WS-TURNO-NOCHE(3) + WS-TURNO-NOCHE(4) +
                WS-TURNO-NOCHE(5)
               ).
            COMPUTE WS-PROME-NOCHE-TOTAL = WS-PROME-NOCHE / 5

            DISPLAY "Promedio turno mañana "  WS-PROME-MAHANA-TOTAL.
            DISPLAY "Promedio turno tarde "   WS-PROME-TARDE-TOTAL.
            DISPLAY "Promedio turno noche "   WS-PROME-NOCHE-TOTAL.

            DISPLAY " ".

            COMPUTE WS-PROME-TOTAL = (
              WS-PROME-MAHANA-TOTAL + WS-PROME-TARDE-TOTAL +
              WS-PROME-NOCHE-TOTAL
             ) / 15.

             MOVE WS-PROME-TOTAL TO WS-EDIT-NOTA-TOTAL.

            DISPLAY "Promedio total" WS-EDIT-NOTA-TOTAL.
           GOBACK.

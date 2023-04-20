       IDENTIFICATION DIVISION.
       PROGRAM-ID. clase-22.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.

      * ANA = Analisis | DER = Derecho | IMP = Impuesto
          77 WS-I                  PIC 9(3) VALUE 1.

          77 WS-PERSONA-MATE       PIC 9(3).
          77 WS-PERSONA-ADMIN      PIC 9(3).
          77 WS-PERSONA-IMPUES     PIC 9(3).

          77 WS-CUPOS-MATE         PIC 9(3) VALUE 115.
          77 WS-CUPOS-ADMIN        PIC 9(3) VALUE 250.
          77 WS-CUPOS-IMPUES       PIC 9(3) VALUE 230.

          77 WS-EDIT-CUPOS-MATE    PIC ZZ9.
          77 WS-EDIT-CUPOS-ADMIN   PIC ZZ9.
          77 WS-EDIT-CUPOS-IMPUES  PIC ZZ9.
          
          77 WS-PERSONA            PIC 9(3) VALUE ZEROS.

       PROCEDURE DIVISION.
               PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I >= 150
                   DISPLAY "1 - cupos MATEMATICAS:    " WS-CUPOS-MATE
                   DISPLAY "2 - cupos ADMINISTRACION: " WS-CUPOS-ADMIN
                   DISPLAY "3 - cupos IMPUESTO:       " WS-CUPOS-IMPUES
                   ACCEPT  WS-PERSONA

                   IF WS-PERSONA = 1 AND WS-CUPOS-MATE >= 1
                       DISPLAY " "
                       DISPLAY "Anotado a ANALISIS MATEMATICO "
                       SUBTRACT 1 FROM WS-CUPOS-MATE
                       ADD 1 TO WS-PERSONA-MATE
                   ELSE
                       IF WS-PERSONA = 2 AND WS-CUPOS-ADMIN >= 1
                          DISPLAY " "
                          DISPLAY "Anotado a DERECHO ADMINISTRATICO"
                          SUBTRACT 1 FROM WS-CUPOS-ADMIN
                          ADD 1 TO WS-PERSONA-ADMIN
                       ELSE
                          IF WS-PERSONA = 3 AND WS-CUPOS-IMPUES >= 1
                             DISPLAY " "
                             DISPLAY "Anotado a IMPUESTO"
                             SUBTRACT 1 FROM WS-CUPOS-IMPUES
                             ADD 1 TO WS-PERSONA-IMPUES
                          ELSE
                             DISPLAY "Valor no valido"
                          END-IF
                       END-IF
                   END-IF
               END-PERFORM

               MOVE WS-PERSONA-MATE   TO WS-EDIT-CUPOS-MATE
               MOVE WS-PERSONA-ADMIN  TO WS-EDIT-CUPOS-ADMIN
               MOVE WS-PERSONA-IMPUES TO WS-EDIT-CUPOS-IMPUES
               
               DISPLAY " "
               DISPLAY "   RESULTADO"
               DISPLAY "ANALISIS MATEMATICO:    " WS-EDIT-CUPOS-MATE
               DISPLAY "DERECHO ADMINISTRATICO: " WS-EDIT-CUPOS-ADMIN
               DISPLAY "IMPUESTO:               " WS-EDIT-CUPOS-IMPUES
           GOBACK.

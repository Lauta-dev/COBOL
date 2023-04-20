       IDENTIFICATION DIVISION.
       PROGRAM-ID. clase-20.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 WS-I         PIC 9(3).
          77 WS-SEXO      PIC X(1).
          77 WS-EDAD      PIC 9(3).

          77 WS-EDAD-H    PIC 9(2).
          77 WS-EDAD-M    PIC 9(2).
          77 WS-EDAD-N    PIC 9(2).

          77 WS-EDAD-H-NO-V    PIC 9(2).
          77 WS-EDAD-M-NO-V    PIC 9(2).
          77 WS-EDAD-N-NO-V    PIC 9(2).

          77 WS-EDAD-HH   PIC 9(2).
          77 WS-EDAD-MM   PIC 9(2).
          77 WS-EDAD-NN   PIC 9(2).

       PROCEDURE DIVISION.
             PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 200
               DISPLAY "H o h = Hombre"
               DISPLAY "M o m = Mujer"
               DISPLAY "N o n = No dar el sexo"
               DISPLAY "Cual es su sexo"

               ACCEPT WS-SEXO

               DISPLAY " "

               IF WS-SEXO = "H" OR WS-SEXO = "h"
                  DISPLAY "Edad"
                  ACCEPT WS-EDAD

                  IF WS-EDAD >= 21 AND <= 34
                    ADD 1 TO WS-EDAD-H
                  ELSE
                    IF WS-EDAD >= 35 AND <= 110
                      ADD 1 TO WS-EDAD-HH
                    ELSE
                      DISPLAY "Valor no valido"
                      ADD 1 TO WS-EDAD-H-NO-V
                    END-IF
                 END-IF
               END-IF

               IF WS-SEXO = "M" OR WS-SEXO = "m"
                  DISPLAY "Edad"
                  ACCEPT WS-EDAD

                  IF WS-EDAD >= 18 AND <= 64
                    ADD 1 TO WS-EDAD-M
                  ELSE
                    IF WS-EDAD >= 65 AND <= 110
                      ADD 1 TO WS-EDAD-MM
                    ELSE
                      DISPLAY "Valor no valido"
                      ADD 1 TO WS-EDAD-M-NO-V
                    END-IF
                  END-IF
               END-IF

               IF WS-SEXO = "N" OR WS-SEXO = "n"
                  DISPLAY "Edad"
                  ACCEPT WS-EDAD

                  IF WS-EDAD >= 10 AND <= 24
                    ADD 1 TO WS-EDAD-N
                  ELSE
                    IF WS-EDAD >= 25 AND <= 110
                      ADD 1 TO WS-EDAD-NN
                    ELSE
                      DISPLAY "Valor no valido"
                      ADD 1 TO WS-EDAD-N-NO-V
                    END-IF
                  END-IF
               END-IF
             END-PERFORM

             DISPLAY "---Edad de las mujeres ingresadas".
             DISPLAY "Mayores de 18: " WS-EDAD-M.
             DISPLAY "Mayores de 65: " WS-EDAD-MM.

             DISPLAY " "

             DISPLAY "---Edad de los hombres ingresados".
             DISPLAY "Mayores de 18: " WS-EDAD-H.
             DISPLAY "Mayores de 65: " WS-EDAD-HH.

             DISPLAY " "

             DISPLAY "---Edad de las personas sin sexo ingresadas".
             DISPLAY "Mayores de 18: " WS-EDAD-N.
             DISPLAY "Mayores de 65: " WS-EDAD-NN.

           GOBACK.

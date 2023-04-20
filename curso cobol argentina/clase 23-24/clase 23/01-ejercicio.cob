       IDENTIFICATION DIVISION.
       PROGRAM-ID. clase-23.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 WS-I         PIC 9(3).
          77 WS-SEXO      PIC X(1).

          77 WS-SALARIO    PIC 9(6) VALUE ZEROS.
          77 WS-VALOR-IN   PIC 9(3) VALUE ZEROS.

          77 WS-SEXO-H    PIC 9(3).
          77 WS-SEXO-M    PIC 9(3).
          77 WS-SEXO-N    PIC 9(3).

          77 WS-SEXO-HH   PIC 9(3).
          77 WS-SEXO-MM   PIC 9(3).
          77 WS-SEXO-NN   PIC 9(3).

       PROCEDURE DIVISION.
             PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I >= 150
               DISPLAY WS-I
               DISPLAY "1 = Hombre"
               DISPLAY "2 = Mujer"
               DISPLAY "3 = No dar el sexo"
               DISPLAY "Cual es su sexo"

               ACCEPT WS-SEXO

               DISPLAY " "

               IF WS-SEXO = 1
                 DISPLAY "Cual es su salario"
                 ACCEPT WS-SALARIO

                 IF WS-SALARIO > 1 AND WS-SALARIO <= 99999
                   ADD 1 TO WS-SEXO-H
                 ELSE
                   IF WS-SALARIO >= 100000 AND WS-SALARIO <= 10000000
                     ADD 1 TO WS-SEXO-HH
                   ELSE
                     ADD 1 TO WS-VALOR-IN
                   END-IF
                 END-IF
               END-IF

               IF WS-SEXO = 2
                 DISPLAY "Cual es su salario"
                 ACCEPT WS-SALARIO

                 IF WS-SALARIO > 1 AND WS-SALARIO <= 99999
                   ADD 1 TO WS-SEXO-M
                 ELSE
                   IF WS-SALARIO >= 100000 AND WS-SALARIO <= 10000000
                     ADD 1 TO WS-SEXO-MM
                   ELSE
                     ADD 1 TO WS-VALOR-IN
                   END-IF
                 END-IF
               END-IF

               IF WS-SEXO = 3
                 DISPLAY "Cual es su salario"
                 ACCEPT WS-SALARIO

                 IF WS-SALARIO > 1 AND WS-SALARIO <= 99999
                   ADD 1 TO WS-SEXO-M
                 ELSE
                   IF WS-SALARIO >= 100000 AND WS-SALARIO <= 10000000
                     ADD 1 TO WS-SEXO-MM
                   ELSE
                     ADD 1 TO WS-VALOR-IN
                   END-IF
                 END-IF
               END-IF
             END-PERFORM

             DISPLAY "--- Mayor a 100000"
             DISPLAY "H " WS-SEXO-H
             DISPLAY "M " WS-SEXO-M
             DISPLAY "N " WS-SEXO-N

             DISPLAY "--- Menor o igual a 100000"
             DISPLAY "H " WS-SEXO-HH
             DISPLAY "M " WS-SEXO-MM
             DISPLAY "N " WS-SEXO-NN

             DISPLAY "--- Valor invalido"
             DISPLAY WS-VALOR-IN

           GOBACK.

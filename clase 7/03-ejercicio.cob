      * 3 - Elaborar un diagrama de flujo que solicite la edad de 200
      * personas y que muestre cuántos
      * son mayores y menores de edad.
      * uso el APROBO como ejemplo

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PER-SONAS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 MAX-PER    PIC 9(3)   VALUE 200.
       77 WS-MENOR   PIC 9(3)   VALUE ZEROS.
       77 WS-MAYOR   PIC 9(3)   VALUE ZEROS.
       77 WS-BUCLE   PIC 9(3)   VALUE ZEROS.
       77 WS-EDAD    PIC 9(2)   VALUE ZEROS.

       PROCEDURE DIVISION.
           PERFORM 
             VARYING WS-BUCLE FROM 1 BY 1 UNTIL WS-BUCLE > MAX-PER
               DISPLAY "Su edad"
               ACCEPT WS-EDAD

               IF WS-EDAD >= 18
                   ADD 1 TO WS-MAYOR
               ELSE IF WS-EDAD <= 17
                   ADD 1 TO WS-MENOR
               END-IF
               END-IF
           END-PERFORM

           DISPLAY "Mayor " WS-MAYOR
           DISPLAY "Menor " WS-MENOR

           GOBACK.

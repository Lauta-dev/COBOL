      * 2 - Desarrolle un diagrama de flujo indicando los pasos para:
      * - Ingresar la nota del exámen de Algoritmos y si es mayor o 
      * igual a siete imprimir que aprobó,
      * sino que no aprobó.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOTA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NOTA-APROBO    PIC 9(2)    VALUE 7.
       77 WS-NOTA-MAXIMA    PIC 9(2)    VALUE 10.
       77 WS-NOTA-EXAMEN    PIC 9(2)    VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Nota del exámen".
           ACCEPT WS-NOTA-EXAMEN.

           IF WS-NOTA-EXAMEN >= WS-NOTA-APROBO AND WS-NOTA-EXAMEN <=
           WS-NOTA-MAXIMA
             DISPLAY "aprobó"
           
           ELSE IF WS-NOTA-EXAMEN > WS-NOTA-MAXIMA
             DISPLAY "La nota máxima es 10"
           
           ELSE IF WS-NOTA-EXAMEN < WS-NOTA-APROBO
             DISPLAY "No aprobó o no dio un número"
           END-IF
           END-IF
           END-IF
           
           GOBACK.

      * 1 – Desarrolle un diagrama de flujo indicando los pasos para:
      * Ingresar un número; mostrando si es par o impar

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Divisiones.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 NUMERO PIC 9(4) VALUE ZEROS.
       77 RESULTADO PIC .9 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Numero para saber si es par o impar".
           ACCEPT NUMERO.

           DIVIDE NUMERO BY 2 GIVING RESULTADO.
           IF RESULTADO = .5
             DISPLAY "Impar"
           ElSE
             DISPLAY "Par"
           END-IF.
           GOBACK.

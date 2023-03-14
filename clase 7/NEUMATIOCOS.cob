      * 5 - Desarrollar un diagrama de flujo para: Cambiar el neumático
      * desinflado de un automóvil o bicicleta

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NEUMA-TICOS.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 M PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.
            DISPLAY "Num".
            ACCEPT M
           GOBACK.

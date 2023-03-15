      * 5. Leer un número correspondiente a un año e imprimir un mensaje
      * indicando si es bisiesto o no. Se recuerda que un año es
      * bisiesto cuando es divisible por 4. Sin embargo, aquellos años
      * que sean divisibles por 4 y también por 100 no son bisiestos,
      * a menos que también sean divisibles por 400.
      * Por ejemplo, 1900 no fue bisiesto, pero sí el 2000
      * 4 > 400 > 100

       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOMBRE.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
         77 ANIO       PIC 9(4)  VALUE ZEROS.

         77 ANIO-4     PIC V9    VALUE ZEROS.
         77 ANIO-100   PIC V9    VALUE ZEROS.
         77 ANIO-400   PIC V9    VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "Año:"
           ACCEPT ANIO

           DIVIDE ANIO BY 4   GIVING ANIO-4
           DIVIDE ANIO BY 400 GIVING ANIO-400
           DIVIDE ANIO BY 100 GIVING ANIO-100

           DISPLAY "------------------------"

           DISPLAY "ANIO-4   " ANIO-4
           DISPLAY "ANIO-400 " ANIO-400
           DISPLAY "ANIO-100 " ANIO-100

           DISPLAY "------------------------"

           IF ANIO-4 = .0 AND ANIO-400 = .0
              DISPLAY "bisiesto"
           ELSE
              DISPLAY "no bisiesto"
           END-IF

           GOBACK.

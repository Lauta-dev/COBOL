      * 4 - Elaborar un diagrama de flujo que solicite el año de
      * nacimiento del empleado y el año actual.
      * Luego calcule la edad y muestre cuantos años le falta para
      * jubilarse (suponiendo que la edad para jubilarse es 60 años,
      * tanto para mujeres como para hombres).

       IDENTIFICATION DIVISION.
       PROGRAM-ID. JUBI-LARSE.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.     
         77 WS-JUBI-LARSE         PIC 9(2)   VALUE 60.
         77 WS-ANIO-ACTUAL        PIC 9(4)   VALUE 2023.
         
         77 WS-EDAD               PIC 9(2)   VALUE ZEROS.
         77 WS-ANIO-NACI-MIENTO   PIC 9(4)   VALUE ZEROS.
         77 WS-EDAD-ACTUAL        PIC 9(2)   VALUE ZEROS.
         77 WS-FALTA              PIC 9(2)   VALUE ZEROS.


       PROCEDURE DIVISION.
            DISPLAY "Cual es su edad?".
            ACCEPT WS-EDAD.

            IF WS-EDAD >= WS-JUBI-LARSE
               DISPLAY "Jubilarse"
            ELSE
              IF WS-EDAD < WS-JUBI-LARSE
                 DISPLAY "Año de nacimiento"
                 ACCEPT WS-ANIO-NACI-MIENTO

                 SUBTRACT WS-ANIO-ACTUAL FROM WS-ANIO-NACI-MIENTO
                 GIVING WS-EDAD-ACTUAL
                 
                 SUBTRACT WS-EDAD-ACTUAL FROM WS-JUBI-LARSE 
                 GIVING WS-FALTA

                 DISPLAY "Falta: " WS-FALTA " para jubilarse"
                 DISPLAY "Edad actual: " WS-EDAD-ACTUAL
              END-IF
            END-IF
           GOBACK.

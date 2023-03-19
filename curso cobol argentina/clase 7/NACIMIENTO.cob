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
         
         77 WS-EDAD               PIC 9(2)   VALUE ZEROS.
         77 WS-FALTA              PIC 9(2)   VALUE ZEROS.


       PROCEDURE DIVISION.
            DISPLAY "Cual es su edad?".
            ACCEPT WS-EDAD.
            SUBTRACT WS-JUBI-LARSE FROM WS-EDAD GIVING WS-FALTA

            IF WS-EDAD >= WS-JUBI-LARSE
               DISPLAY "Jubilarse"
            ELSE
              IF WS-EDAD < WS-JUBI-LARSE
                DISPLAY WS-FALTA
              END-IF
            END-IF
           GOBACK.

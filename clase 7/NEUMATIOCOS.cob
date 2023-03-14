      * 5 - Desarrollar un diagrama de flujo para: Cambiar el neumático
      * desinflado de un automóvil o bicicleta

       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRANS-PORTE.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
         77 TRANS-PORTE    PIC 9(1)    VALUE ZEROS.
         77 RUEDA          PIC 9(1)    VALUE ZEROS.
         77 KIT            PIC 9(1)    VALUE ZEROS.

       PROCEDURE DIVISION.
            DISPLAY "Esta la rueda pinchada?"
            DISPLAY "1 - si esta la rueda pinchada"
            DISPLAY "2 - si no esta pinchada"
            ACCEPT RUEDA

      * ---->                      RUEDA                          <---- *

            IF RUEDA = 1
               DISPLAY "Vehiculo con rueda pinchada"
               DISPLAY "1 - auto con rueda pinchada"
               DISPLAY "2 - bici con rueda pinchada"
               ACCEPT TRANS-PORTE

      * ---->                     INICIO BICI                     <---- *
               IF TRANS-PORTE = 2
                 DISPLAY "Tiene un KIT ? (BICI)"
                 DISPLAY "1 - si tiene un KIT"
                 DISPLAY "2 - si no tiene un KIT"    
                     
                 ACCEPT KIT

                 IF KIT = 1
                    DISPLAY "1. Sacar un parche"
                    DISPLAY "2. Buscar que lado de "
                     "la rueda esta pinchada"
                    DISPLAY "4. Agregar el parche"
                    DISPLAY "5. Buscar un gomero para inflar la rueda"
                 ELSE
                    DISPLAY "Buscar un gomero"
                 END-IF
      * ---->                      FIN BICI                       <---- *

      * ---->                      INICIO AUTO                    <---- *
               ELSE
                  DISPLAY "Tiene un KIT ? (AUTO)"
                  DISPLAY "1 - si tiene un KIT"
                  DISPLAY "2 - si no tiene un KIT"
                 ACCEPT KIT

                 IF KIT = 1
                    DISPLAY "1. Sacar la rueda de repuesto"
                    DISPLAY "2. Sacar llave"
                    DISPLAY "3. Desatornillar rueda pinchada"
                    DISPLAY "4. Sacar rueda pinchada"
                    DISPLAY "5. Poner rueda de repuesto"
                    DISPLAY "6. Atornillar rueda de respuesto"
                 ELSE
                    DISPLAY "Llamar una grua"
                 END-IF
      * ---->                      FIN AUTO                       <---- *

      * ---->                      FIN IF TRANS-PORTE             <---- *
               END-IF
            ELSE
               DISPLAY "Seguir manejando"
            END-IF
      * ---->                      FIN IF RUEDA                   <---- *

           GOBACK.

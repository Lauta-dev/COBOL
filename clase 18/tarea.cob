      * 01 finanzas; 02 clientes; 03 inversiones; 04 préstamos;
      * 05 informática

      * 01) Análisis (LUN; MIE; VIE); procedimientos (MAR, JUE)
      * 02) Atención (LUN; MIE); actualización datos (MAR; JUE; VIE)
      * 03) Administración (MAR; JUE); asesoramiento (LUN; MIE; VIE)
      * 04) Promoción (VIE); otorgamiento (LUN; MAR; MIE; JUE)
      * 05) Desarrollo (LUN; MAR; MIE; JUE; VIE)
      *     Producción (LUN; MAR; MIE; JUE; VIE)

      * corte de control

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Divisiones.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 WS-DIA       PIC X(10)   OCCURS 5 TIMES.
          77 WS-EMPLE     PIC X(15)   OCCURS 5 TIMES.

          77 WS-FINANZA   PIC X(25)   OCCURS 5 TIMES.
          77 WS-CLI       PIC X(25)   OCCURS 5 TIMES.
          77 WS-INVER     PIC X(25)   OCCURS 5 TIMES.
          77 WS-PRESTA    PIC X(25)   OCCURS 5 TIMES.
          77 WS-INFO      PIC X(25)   OCCURS 5 TIMES.
          77 WS-INFO2     PIC X(25)   OCCURS 5 TIMES.

          77 INDICE       PIC 9(1)    VALUE ZEROS.

       PROCEDURE DIVISION.
           MOVE "Lunes"           TO WS-DIA(1).
           MOVE "Martes"          TO WS-DIA(2).
           MOVE "Miercoles"       TO WS-DIA(3).
           MOVE "Jueves"          TO WS-DIA(4).
           MOVE "Viernes"         TO WS-DIA(5).

           MOVE "finanzas"        TO WS-EMPLE(1).
           MOVE "clientes"        TO WS-EMPLE(2).
           MOVE "inversiones"     TO WS-EMPLE(3).
           MOVE "préstamos"       TO WS-EMPLE(4).
           MOVE "informática"     TO WS-EMPLE(5).

      ******************            FINANZAS           ******************

           MOVE "Analisis"        TO WS-FINANZA(1).
           MOVE "Procedimientos"  TO WS-FINANZA(2).
           MOVE "Analisis"        TO WS-FINANZA(3).
           MOVE "Procedimientos"  TO WS-FINANZA(4).
           MOVE "Analisis"        TO WS-FINANZA(5).

      ******************            CLI                ******************

           MOVE "Atención"        TO WS-CLI(1).
           MOVE "actualización"   TO WS-CLI(2).
           MOVE "Atención"        TO WS-CLI(3).
           MOVE "actualización"   TO WS-CLI(4).
           MOVE "actualización"   TO WS-CLI(5).

      ******************            inversiones        ******************

           MOVE "asesoramiento"   TO WS-INVER(1).
           MOVE "Admin"           TO WS-INVER(2).
           MOVE "asesoramiento"   TO WS-INVER(3).
           MOVE "Admin"           TO WS-INVER(4).
           MOVE "asesoramiento"   TO WS-INVER(5).

      ******************            Promoción          ******************

           MOVE "otorgamiento"    TO WS-PRESTA(1).
           MOVE "otorgamiento"    TO WS-PRESTA(2).
           MOVE "otorgamiento"    TO WS-PRESTA(3).
           MOVE "otorgamiento"    TO WS-PRESTA(4).
           MOVE "Promoción"       TO WS-PRESTA(5).

      ******************            INFO               ******************

           MOVE "Desarrollo"      TO WS-INFO(1).
           MOVE "Desarrollo"      TO WS-INFO(2).
           MOVE "Desarrollo"      TO WS-INFO(3).
           MOVE "Desarrollo"      TO WS-INFO(4).
           MOVE "Desarrollo"      TO WS-INFO(5).

           MOVE "Producción"      TO WS-INFO2(1).
           MOVE "Producción"      TO WS-INFO2(2).
           MOVE "Producción"      TO WS-INFO2(3).
           MOVE "Producción"      TO WS-INFO2(4).
           MOVE "Producción"      TO WS-INFO2(5).

      ******************            BUCLE              ******************

           PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 5
             IF INDICE = 1
                DISPLAY WS-DIA(INDICE)
                DISPLAY "   " WS-EMPLE(INDICE)
                DISPLAY "        " WS-FINANZA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 1)
                DISPLAY "        " WS-CLI(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 2)
                DISPLAY "        " WS-INVER(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 3)
                DISPLAY "        " WS-PRESTA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 4)
                DISPLAY "        " WS-INFO(INDICE)
                DISPLAY "        " WS-INFO2(INDICE)
             END-IF

             IF INDICE = 2
                DISPLAY WS-DIA(INDICE)
                DISPLAY "   " WS-EMPLE(INDICE - 1)
                DISPLAY "        " WS-FINANZA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE)
                DISPLAY "        " WS-CLI(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 1)
                DISPLAY "        " WS-INVER(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 2)
                DISPLAY "        " WS-PRESTA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 3)
                DISPLAY "        " WS-INFO(INDICE)
                DISPLAY "        " WS-INFO2(INDICE)
             END-IF

             IF INDICE = 3
                DISPLAY WS-DIA(INDICE)
                DISPLAY "   " WS-EMPLE(INDICE - 2)
                DISPLAY "        " WS-FINANZA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE - 1)
                DISPLAY "        " WS-CLI(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE)
                DISPLAY "        " WS-INVER(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 1)
                DISPLAY "        " WS-PRESTA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 2)
                DISPLAY "        " WS-INFO(INDICE)
                DISPLAY "        " WS-INFO2(INDICE)
             END-IF

             IF INDICE = 4
                DISPLAY WS-DIA(INDICE)
                DISPLAY "   " WS-EMPLE(INDICE - 3)
                DISPLAY "        " WS-FINANZA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE - 2)
                DISPLAY "        " WS-CLI(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE - 1)
                DISPLAY "        " WS-INVER(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE)
                DISPLAY "        " WS-PRESTA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE + 1)
                DISPLAY "        " WS-INFO(INDICE)
                DISPLAY "        " WS-INFO2(INDICE)
             END-IF

             IF INDICE = 5
                DISPLAY WS-DIA(INDICE)
                DISPLAY "   " WS-EMPLE(INDICE - 4)
                DISPLAY "        " WS-FINANZA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE - 3)
                DISPLAY "        " WS-CLI(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE - 2)
                DISPLAY "        " WS-INVER(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE - 1)
                DISPLAY "        " WS-PRESTA(INDICE)

                DISPLAY "   " WS-EMPLE(INDICE)
                DISPLAY "        " WS-INFO(INDICE)
                DISPLAY "        " WS-INFO2(INDICE)
             END-IF
           END-PERFORM.

           DISPLAY " "

           DISPLAY "FINANZAS".
           DISPLAY "     Análisis y procedimientos".

           DISPLAY "CLIENTES".
           DISPLAY "     Atención y actualización de datos".

           DISPLAY "INVERSIONES".
           DISPLAY "     Administración y asesoramiento".

           DISPLAY "PRÉSTAMOS".
           DISPLAY "     Promoción y otorgamiento".

           DISPLAY "INFORMÁTICA".
           DISPLAY "     Desarrollo y producción".


           GOBACK.

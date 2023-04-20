      * ECU  = ECUADOR
      * BR   = BRASIL
      * COR  = CORONDA
      * SP   = SAN PEDRO
      * CO   = CORRIENTES
      * RN   = RIO NEGRO

       IDENTIFICATION DIVISION.
       PROGRAM-ID. tarea-24.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
         77 WS-FRUTA-BANANA-ECU  PIC 9(3).
         77 WS-FRUTA-BANANA-BR   PIC 9(3).

         77 WS-FRUTA-FRUTI-COR   PIC 9(3).
         77 WS-FRUTA-FRUTI-SP    PIC 9(3).
         77 WS-FRUTA-FRUTI-CO    PIC 9(3).

         77 WS-FRUTA-MANZA-RN    PIC 9(3).
         77 WS-FRUTA-MANZA-SP    PIC 9(3).

         77 WS-EDITAR-FRUTA-BANANA-ECU  PIC ZZ9.
         77 WS-EDITAR-FRUTA-BANANA-BR   PIC ZZ9.

         77 WS-EDITAR-FRUTA-FRUTI-COR   PIC ZZ9.
         77 WS-EDITAR-FRUTA-FRUTI-SP    PIC ZZ9.
         77 WS-EDITAR-FRUTA-FRUTI-CO    PIC ZZ9.

         77 WS-EDITAR-FRUTA-MANZA-RN    PIC ZZ9.
         77 WS-EDITAR-FRUTA-MANZA-SP    PIC ZZ9.

         77 WS-FRUTA-DONA    PIC 9(3).
         77 WS-EDITAR-FRUTA-DONA    PIC ZZ9.

         77 WS-FRUTA PIC 9(1) VALUE ZEROS.
         77 WS-TIPO-FRUTA PIC 9(1).
       PROCEDURE DIVISION.
             DISPLAY "Hay frutas?"
             DISPLAY "1 = Si"
             DISPLAY "0 = No"
             ACCEPT WS-FRUTA
             PERFORM UNTIL WS-FRUTA = 0
               DISPLAY "Tipo de fruta"
               DISPLAY "----------------------------"

               DISPLAY "1 - Bananas de Ecuador"
               DISPLAY "2 - Bananas de Brasil"
               DISPLAY "3 - Frutillas de Coronda"
               DISPLAY "4 - Frutillas de San Pedro"
               DISPLAY "5 - Frutillas de Corrientes"
               DISPLAY "6 - Manzanas de Rio Negro"
               DISPLAY "7 - Manzanas de San Pedro"
               DISPLAY "8 - Fruta a donar"

               ACCEPT WS-TIPO-FRUTA

               EVALUATE WS-TIPO-FRUTA
                   WHEN 1
                      ADD 1 TO WS-FRUTA-BANANA-ECU
                   WHEN 2
                      ADD 1 TO WS-FRUTA-BANANA-BR
                   WHEN 3
                      ADD 1 TO WS-FRUTA-FRUTI-COR
                   WHEN 4
                      ADD 1 TO WS-FRUTA-FRUTI-SP
                   WHEN 5
                      ADD 1 TO WS-FRUTA-FRUTI-CO
                   WHEN 6
                      ADD 1 TO WS-FRUTA-MANZA-RN
                   WHEN 7
                      ADD 1 TO WS-FRUTA-MANZA-SP
                   WHEN 8
                      ADD 1 TO WS-FRUTA-DONA
                   WHEN OTHER
                      DISPLAY "Valor no valido, de otro valor"  
                      ACCEPT WS-TIPO-FRUTA
                      CONTINUE
               END-EVALUATE
               DISPLAY "----------------------------"
               DISPLAY "Hay frutas?"
               DISPLAY "1 = Si"
               DISPLAY "0 = No"
               ACCEPT WS-FRUTA
             END-PERFORM

             MOVE WS-FRUTA-BANANA-BR   TO   WS-EDITAR-FRUTA-BANANA-BR
             MOVE WS-FRUTA-BANANA-ECU  TO   WS-EDITAR-FRUTA-BANANA-ECU
             MOVE WS-FRUTA-FRUTI-CO    TO   WS-EDITAR-FRUTA-FRUTI-CO
             MOVE WS-FRUTA-FRUTI-COR   TO   WS-EDITAR-FRUTA-FRUTI-COR
             MOVE WS-FRUTA-FRUTI-SP    TO   WS-EDITAR-FRUTA-FRUTI-SP
             MOVE WS-FRUTA-MANZA-RN    TO   WS-EDITAR-FRUTA-MANZA-RN
             MOVE WS-FRUTA-MANZA-SP    TO   WS-EDITAR-FRUTA-MANZA-SP
             MOVE WS-FRUTA-DONA        TO   WS-EDITAR-FRUTA-DONA

             DISPLAY "Banana de brasil   " WS-EDITAR-FRUTA-BANANA-BR
             DISPLAY "Banana de Ecuador  " WS-EDITAR-FRUTA-BANANA-ECU
             DISPLAY "Frutillas de Corrientes" WS-EDITAR-FRUTA-FRUTI-CO
             DISPLAY "Frutillas de Coronda   " WS-EDITAR-FRUTA-FRUTI-COR
             DISPLAY "Frutillas de San Pedro " WS-EDITAR-FRUTA-FRUTI-SP
             DISPLAY "Manzana de Rio Negro   " WS-EDITAR-FRUTA-MANZA-RN
             DISPLAY "Manzana de San Pedro   " WS-EDITAR-FRUTA-MANZA-SP
             DISPLAY "Fruta donada           " WS-EDITAR-FRUTA-DONA

           GOBACK.

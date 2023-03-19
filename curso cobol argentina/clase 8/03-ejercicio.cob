      * 3. Crear un programa que solicite un número de mes 
      * (ejemplo 4) y escriba el nombre del mes en letras ("abril"). 
      * Verificar que el mes sea válido e informar en caso que no lo sea

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MESES.

       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 MES PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "De el numero de mes a imprimir"
           ACCEPT MES

           EVALUATE MES
               WHEN 1 DISPLAY "Enero"
               WHEN 2 DISPLAY "Febrero"
               WHEN 3 DISPLAY "Marzo"
               WHEN 4 DISPLAY "Abril"
               WHEN 5 DISPLAY "Mayo"
               WHEN 6 DISPLAY "Junio"
               WHEN 7 DISPLAY "Julio"
               WHEN 8 DISPLAY "Agosto"
               WHEN 9 DISPLAY "Septiembre"
               WHEN 10 DISPLAY "Octubre"
               WHEN 11 DISPLAY "Noviembre"
               WHEN 12 DISPLAY "Diciembre"
                  
               WHEN OTHER
                  CONTINUE
           END-EVALUATE.
           GOBACK.

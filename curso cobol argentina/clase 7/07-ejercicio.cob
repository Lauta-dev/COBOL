      * - Desarrolle un diagrama de flujo que permita leer tres
      * números en forma aleatoria y ordenarlos de menor a mayor.
      * Muestre el resultado.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAYOR-MENOR.
       DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
        01 NUMEROS.
         02 NUM1 PIC 9(2).
         02 NUM2 PIC 9(2).
         02 NUM3 PIC 9(2).

       PROCEDURE DIVISION.
       PREGUNTAR-USUARIO.
             DISPLAY "primer numero".
             ACCEPT NUM1.

             DISPLAY " ".

             DISPLAY "segundo numero".
             ACCEPT NUM2.

             DISPLAY " ".

             DISPLAY "tercer numero".
             ACCEPT NUM3.

             DISPLAY " ".

       LOGICA.
             IF NUM1 > NUM2 
             AND NUM1 > NUM3 
             AND NUM2 > NUM3
             
               DISPLAY "-"
               DISPLAY NUM1
               DISPLAY NUM2
               DISPLAY NUM3
             ELSE
               IF NUM2 > NUM1 
               AND NUM2 > NUM3
               AND NUM1 < NUM3
               
                 DISPLAY "--"
                 DISPLAY NUM2
                 DISPLAY NUM3
                 DISPLAY NUM1
               ELSE
                 IF NUM3 > NUM1 
                 AND NUM3 > NUM2
                 AND NUM2 < NUM1
                   DISPLAY "---"
                   DISPLAY NUM3
                   DISPLAY NUM1
                   DISPLAY NUM2
                 ELSE
                   DISPLAY "A"  
                 END-IF
               END-IF
             END-IF

           GOBACK.

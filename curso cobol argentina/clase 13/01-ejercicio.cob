       IDENTIFICATION DIVISION.
       PROGRAM-ID. HOLA-JUAN.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          77 NOMBRE PIC X(10) VALUE SPACES.
          77 SALUDO PIC X(10) VALUE SPACES.
                                 
       PROCEDURE DIVISION.
             MOVE "JUAN" TO NOMBRE.
             MOVE "HOLA" TO SALUDO.

             DISPLAY SALUDO NOMBRE
           GOBACK.
  
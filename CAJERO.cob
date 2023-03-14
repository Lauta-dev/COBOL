       IDENTIFICATION DIVISION.
       PROGRAM-ID. Divisiones.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 DIA PIC X(8) VALUE SPACE.
       PROCEDURE DIVISION.
            DISPLAY "Dia de la semana?".
            ACCEPT DIA.
            DISPLAY "Dia elegido: " DIA.
	          GOBACK.
       END PROGRAM Divisiones.

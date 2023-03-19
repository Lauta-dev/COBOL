       IDENTIFICATION DIVISION.
       PROGRAM-ID. alumno.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          01 ALUMNO.
           02 NOMBRE    PIC X(10).
           02 APELLIDO  PIC X(10).
           02 UUID      PIC X(10).
           02 CORREO    PIC X(10).

          77 I PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
       500-INICIO.
             DISPLAY "ALUMNOS"
             DISPLAY "--------------------------------"
             PERFORM 1000-ALUMNO UNTIL I > 6
             GOBACK.

       1000-ALUMNO.
             DISPLAY "ALUMNO N°: " I
             DISPLAY "Nombre del alumno".
             ACCEPT NOMBRE.

             DISPLAY " ".

             DISPLAY "Apellido del alumno".
             ACCEPT APELLIDO.

             DISPLAY " ".

             DISPLAY "ID del alumno".
             ACCEPT UUID.

             DISPLAY " ".

             DISPLAY "Correo del alumno".
             ACCEPT CORREO.

             DISPLAY " ".

             ADD 1 TO I.

       2000-SALIDA.
             DISPLAY "NOMBRE:   " NOMBRE.
             DISPLAY "APELLIDO: " APELLIDO
             DISPLAY "ID:       " UUID
             DISPLAY "CORREO:   " CORREO
           GOBACK.

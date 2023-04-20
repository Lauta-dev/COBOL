       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLAS.
       DATA DIVISION.
        FILE SECTION.
         WORKING-STORAGE SECTION.
          01 CINE.
             02 GENERO OCCURS 4 TIMES.
               03 PELI PIC X(20) OCCURS 3 TIMES.

       PROCEDURE DIVISION.
       MAIM.
             MOVE "cyberpunk"        TO PELI(1,1)
             MOVE "Borderlans"       TO PELI(1,2)
             MOVE "Borderlans II"    TO PELI(1,3)

             MOVE "guerra"           TO PELI(2,1)
             MOVE "call of duty"     TO PELI(2,2)
             MOVE "battefild"        TO PELI(2,3)

             MOVE "historico"        TO PELI(3,1)
             MOVE "assasinc creed"   TO PELI(3,2)
             MOVE "COD"              TO PELI(3,3)

             MOVE "accion"           TO PELI(4,1)
             MOVE "GTA"              TO PELI(4,2)
             MOVE "Whatch dog"       TO PELI(4,3)

             DISPLAY "---------------"
             DISPLAY PELI(1,1)
             DISPLAY PELI(1,2)
             DISPLAY PELI(1,3)

             DISPLAY "---------------"
             DISPLAY PELI(2,1)
             DISPLAY PELI(2,2)
             DISPLAY PELI(2,3)

             DISPLAY "---------------"
             DISPLAY PELI(3,1)
             DISPLAY PELI(3,2)
             DISPLAY PELI(3,3)

             DISPLAY "---------------"
             DISPLAY PELI(4,1)
             DISPLAY PELI(4,2)
             DISPLAY PELI(4,3)
           GOBACK.
  
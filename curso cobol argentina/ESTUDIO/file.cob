       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILES.

       ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
            FILE-CONTROL.
            SELECT STUDENT ASSIGN TO "muestra.txt".
            
       DATA DIVISION.
        FILE SECTION.
        FD STUDENT.
        01 STUDENT-FILE.
           05 STUDENT-ID PIC 9(6) VALUE ZEROS.
           05 STUDENT-NAME PIC X(30) VALUE SPACES.
        
         WORKING-STORAGE SECTION.
        01 WS-STUDENT-FILE.
           05 WS-STUDENT-ID PIC 9(6) VALUE ZEROS.
           05 WS-STUDENT-NAME PIC X(30) VALUE SPACES.
        77 ws-i PIC 9(1).

       PROCEDURE DIVISION.
       main.
           OPEN INPUT STUDENT.
           READ STUDENT INTO STUDENT-FILE
             AT END GO TO cerrar-programa.
           ADD 1 TO WS-I.
           DISPLAY "Reg #" WS-I ": " STUDENT-FILE.
           GO TO main.

       cerrar-programa.
           CLOSE STUDENT.
           GOBACK.
  
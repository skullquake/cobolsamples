       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobparstr.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 P000 PIC X(32).
       PROCEDURE DIVISION using P000.
            DISPLAY "----------------------------------------".
            DISPLAY "parstr()".
            DISPLAY "----------------------------------------".
            DISPLAY P000.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.


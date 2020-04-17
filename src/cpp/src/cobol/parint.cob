       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobparint.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 P000 BINARY-SHORT.
       PROCEDURE DIVISION using P000.
            DISPLAY "----------------------------------------".
            DISPLAY "parint()".
            DISPLAY "----------------------------------------".
            DISPLAY P000.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.


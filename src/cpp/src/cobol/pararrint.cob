       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobpararrint.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       01 I BINARY-SHORT.
       01 J BINARY-SHORT.
       LINKAGE SECTION.
       01 P000.
          05 P000R BINARY-SHORT OCCURS 8 TIMES.
       PROCEDURE DIVISION using P000.
            DISPLAY "----------------------------------------".
            DISPLAY "pararrint()".
            DISPLAY "----------------------------------------".
            SET J TO LENGTH OF P000R.
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > J
                 DISPLAY P000R(I)
            END-PERFORM.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.



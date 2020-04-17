       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobpararrfloat.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       01 I BINARY-SHORT.
       01 J BINARY-SHORT.
       LINKAGE SECTION.
       01 P000.
          05 P000R COMPUTATIONAL-1 OCCURS 128 TIMES.
       PROCEDURE DIVISION using P000.
            DISPLAY "----------------------------------------".
            DISPLAY "pararrfloat()".
            DISPLAY "----------------------------------------".
            SET J TO LENGTH OF P000R.
            SET J TO 128.
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > J
                 DISPLAY I':'P000R(I)
            END-PERFORM.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.



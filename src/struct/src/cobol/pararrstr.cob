       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobpararrstr.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       01 I BINARY-SHORT.
       01 J BINARY-SHORT.
       LINKAGE SECTION.
       01 P000.
          05 P000R PIC X(8) OCCURS 32 TIMES.
       PROCEDURE DIVISION using P000.
            DISPLAY "----------------------------------------".
            DISPLAY "pararrstr()".
            DISPLAY "----------------------------------------".
            COMPUTE J=( LENGTH OF P000 / LENGTH OF P000R )
            DISPLAY J ' Strings'
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > J
                 DISPLAY P000R(I)
            END-PERFORM.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.



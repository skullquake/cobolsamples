       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobf0.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
          01 BS00 BINARY-SHORT           VALUE 12.
      * counters
          01 I BINARY-SHORT SIGNED VALUE 0.
          01 J BINARY-SHORT SIGNED VALUE 0.
      * arrays
          01 ARR.
      *      05 ARRR PIC 9(1) OCCURS 8 TIMES INDEXED BY ARRIDX.
      *      05 ARRR BINARY-C-LONG OCCURS 8 TIMES INDEXED BY ARRIDX.
             05 ARRR BINARY-C-LONG OCCURS 8 TIMES.
      * structs
          01 STRCTBS.
             05 STRCTBSM0 BINARY-SHORT VALUE 0.
             05 STRCTBSM1 BINARY-SHORT VALUE 1.
             05 STRCTBSM2 BINARY-SHORT VALUE 2.
             05 STRCTBSM3 BINARY-SHORT VALUE 3.
          01 STRCTBCL.
             05 STRCTBCLM0 BINARY-C-LONG VALUE 10.
             05 STRCTBCLM1 BINARY-C-LONG VALUE 11.
             05 STRCTBCLM2 BINARY-C-LONG VALUE 12.
             05 STRCTBCLM3 BINARY-C-LONG VALUE 13.
          01 STRCTPICX32.
             05 STRCTPICX32M0 PIC X(32) VALUE ''.
             05 STRCTPICX32M1 PIC X(32) VALUE ''.
             05 STRCTPICX32M2 PIC X(32) VALUE ''.
             05 STRCTPICX32M3 PIC X(32) VALUE ''.

       LINKAGE SECTION.
       PROCEDURE DIVISION.
      * structs
            DISPLAY STRCTBS.
            DISPLAY STRCTBSM0.
            DISPLAY STRCTBSM1.
            DISPLAY STRCTBSM2.
            DISPLAY STRCTBSM3.
            DISPLAY STRCTBCL.
            DISPLAY STRCTBCLM0.
            DISPLAY STRCTBCLM1.
            DISPLAY STRCTBCLM2.
            DISPLAY STRCTBCLM3.
      *                  \0
            STRING 'foo' X'00' INTO STRCTPICX32M0 
            STRING 'bar' X'00' INTO STRCTPICX32M1
            STRING 'baz' X'00' INTO STRCTPICX32M2
            STRING 'qux' X'00' INTO STRCTPICX32M3
            DISPLAY STRCTPICX32.
            DISPLAY STRCTPICX32M0.
            DISPLAY STRCTPICX32M1.
            DISPLAY STRCTPICX32M2.
            DISPLAY STRCTPICX32M3.
      * c passing
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructint' USING BY REFERENCE STRCTBS.".
            CALL 'parstructint'        USING BY REFERENCE STRCTBS.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructuint' USING BY REFERENCE STRCTBS.".
            CALL 'parstructuint'       USING BY REFERENCE STRCTBS.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructint' USING BY REFERENCE STRCTBCL.".
            CALL 'parstructint'        USING BY REFERENCE STRCTBCL.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructuint' USING BY REFERENCE STRCTBCL.".
            CALL 'parstructuint'       USING BY REFERENCE STRCTBCL.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructlong' USING BY REFERENCE STRCTBS.".
            CALL 'parstructlong'       USING BY REFERENCE STRCTBS.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructulong' USING BY REFERENCE STRCTBS.".
            CALL 'parstructulong'      USING BY REFERENCE STRCTBS.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructlong' USING BY REFERENCE STRCTBCL.".
            CALL 'parstructlong'       USING BY REFERENCE STRCTBCL.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructulong' USING BY REFERENCE STRCTBCL.".
            CALL 'parstructulong'      USING BY REFERENCE STRCTBCL.
            DISPLAY "----------------------------------------".
            DISPLAY "CALL 'parstructstr' USING BY REFERENCE STRCTPICX3.".
            CALL 'parstructstr'        USING BY REFERENCE STRCTPICX32.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.


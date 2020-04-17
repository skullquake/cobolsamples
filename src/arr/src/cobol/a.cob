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
       LINKAGE SECTION.
       PROCEDURE DIVISION.
      * populate
            SET J TO LENGTH OF ARRR.
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > J
                 SET ARRR(I) TO I
            END-PERFORM.
      * select
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > J
                 DISPLAY ARRR(I)
            END-PERFORM.
      * c passing
            CALL 'pararrulong'        USING ARR J.
            CALL 'pararrulongmanip'        USING ARR J.
      * select
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > J
                 DISPLAY ARRR(I)
            END-PERFORM.
            EXIT PROGRAM.


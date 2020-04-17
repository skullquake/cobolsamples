       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobparstructbs.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       LINKAGE SECTION.
          01 STRCTBS.
             05 STRCTBSM0 BINARY-SHORT VALUE 0.
             05 STRCTBSM1 BINARY-SHORT VALUE 1.
             05 STRCTBSM2 BINARY-SHORT VALUE 2.
             05 STRCTBSM3 BINARY-SHORT VALUE 3.
        PROCEDURE DIVISION USING STRCTBS.
            DISPLAY "----------------------------------------".
            DISPLAY "parstructbs()".
            DISPLAY "----------------------------------------".
            DISPLAY STRCTBS.
            DISPLAY STRCTBSM0.
            DISPLAY STRCTBSM1.
            DISPLAY STRCTBSM2.
            DISPLAY STRCTBSM3.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.

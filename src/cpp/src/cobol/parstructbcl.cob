       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobparstructbcl.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       LINKAGE SECTION.
      *   01 STRCTBS.
      *      05 STRCTBSM0 BINARY-SHORT VALUE 0.
      *      05 STRCTBSM1 BINARY-SHORT VALUE 1.
      *      05 STRCTBSM2 BINARY-SHORT VALUE 2.
      *      05 STRCTBSM3 BINARY-SHORT VALUE 3.
          01 STRCTBCL.
             05 STRCTBCLM0 BINARY-C-LONG.
             05 STRCTBCLM1 BINARY-C-LONG.
             05 STRCTBCLM2 BINARY-C-LONG.
             05 STRCTBCLM3 BINARY-C-LONG.
      *   01 STRCTPICX32.
      *      05 STRCTPICX32M0 PIC X(32) VALUE ''.
      *      05 STRCTPICX32M1 PIC X(32) VALUE ''.
      *      05 STRCTPICX32M2 PIC X(32) VALUE ''.
      *      05 STRCTPICX32M3 PIC X(32) VALUE ''.
       PROCEDURE DIVISION USING STRCTBCL.
            DISPLAY "----------------------------------------".
            DISPLAY "parstructbcl()".
            DISPLAY "----------------------------------------".
            DISPLAY STRCTBCL.
            DISPLAY STRCTBCLM0.
            DISPLAY STRCTBCLM1.
            DISPLAY STRCTBCLM2.
            DISPLAY STRCTBCLM3.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.

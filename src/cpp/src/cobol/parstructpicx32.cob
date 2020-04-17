       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobparstructpicx32.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
       LINKAGE SECTION.
          01 STRCTPICX32.
             05 STRCTPICX32M0 PIC X(32).
             05 STRCTPICX32M1 PIC X(32).
             05 STRCTPICX32M2 PIC X(32).
             05 STRCTPICX32M3 PIC X(32).
        PROCEDURE DIVISION USING STRCTPICX32.
            DISPLAY "----------------------------------------".
            DISPLAY "parstructpicx32()".
            DISPLAY "----------------------------------------".
            DISPLAY STRCTPICX32.
            DISPLAY STRCTPICX32M0.
            DISPLAY STRCTPICX32M1.
            DISPLAY STRCTPICX32M2.
            DISPLAY STRCTPICX32M3.
            DISPLAY "----------------------------------------".
            EXIT PROGRAM.

000000 IDENTIFICATION DIVISION.
000000 PROGRAM-ID. fn.
000000 ENVIRONMENT DIVISION.
000000 DATA DIVISION.
000000    WORKING-STORAGE SECTION.
000000* 9 - numeric
000000    01 A000 PIC 9(2) VALUE 1.
000000* A - alphabetic
000000    01 A001 PIC A(2) VALUE 'ab'.
000000* X - alphanumeric
000000    01 A002 PIC X(2) VALUE 'ab'.
000000* V - implicit decimal
000000*   01 A003 PIC V(2) VALUE 'ab'.
000000* S - sign
000000    01 A004 PIC S9(2) VALUE +12.
000000* P - assumed decimal
000000*   01 A005 PIC P VALUE 1.
000000 LINKAGE SECTION.
000000 PROCEDURE DIVISION.
000000  DISPLAY A000.
000000  DISPLAY A001.
000000  DISPLAY A002.
000000* DISPLAY A003.
000000  DISPLAY A004.
000000* DISPLAY A005.
000000  DISPLAY A004 A000
000000  DISPLAY A004
000000  EXIT PROGRAM.

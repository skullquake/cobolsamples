      * subtracts two or more numbers
      * note MULTIPLY A B BY C D means 
      * 	(A+B)-(C+D)
000000 IDENTIFICATION DIVISION.
000000 PROGRAM-ID. fn.
000000 ENVIRONMENT DIVISION.
000000 DATA DIVISION.
000000    WORKING-STORAGE SECTION.
000000    01 I000 PIC S9(2) VALUE 8.
000000    01 I001 PIC S9(2) VALUE 8.
000000    01 IMUL PIC S9(2) VALUE 0.
000000 LINKAGE SECTION.
000000*------------------------------------------------------------------------
000000 PROCEDURE DIVISION.
000000  DISPLAY '----------------------------------------'
000000*------------------------------------------------------------------------
000000*MULTIPLY INT
000000*------------------------------------------------------------------------
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '*I001: 'I001.
000000  DISPLAY '========================================'
000000  MULTIPLY I000 BY I001 GIVING IMUL.
000000  DISPLAY '=IMUL: 'IMUL.
000000  DISPLAY '----------------------------------------'
000000  EXIT PROGRAM.

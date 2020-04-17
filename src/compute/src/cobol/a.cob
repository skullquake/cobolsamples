      * compute alleviates having to use add,subtract,multiply,and divide keywords, which is
      * cumbersome
000000 IDENTIFICATION DIVISION.
000000 PROGRAM-ID. fn.
000000 ENVIRONMENT DIVISION.
000000 DATA DIVISION.
000000    WORKING-STORAGE SECTION.
000000    01 I000 PIC S9(8) VALUE 16.
000000    01 I001 PIC S9(8) VALUE 32.
000000    01 IOUT PIC S9(8) VALUE 0.
000000 LINKAGE SECTION.
000000*------------------------------------------------------------------------
000000 PROCEDURE DIVISION.
000000  DISPLAY '----------------------------------------'
000000*------------------------------------------------------------------------
000000*MULTIPLY INT
000000*------------------------------------------------------------------------
000000  COMPUTE IOUT= (I000 * I001 + I000 / I001).
000000  DISPLAY '(I000 * I001 + I000 / I001): 'IOUT.
000000  DISPLAY '----------------------------------------'
000000  EXIT PROGRAM.

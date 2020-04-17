      * divides two numeric values
000000 IDENTIFICATION DIVISION.
000000 PROGRAM-ID. fn.
000000 ENVIRONMENT DIVISION.
000000 DATA DIVISION.
000000    WORKING-STORAGE SECTION.
000000    01 I000 PIC S9(8) VALUE 16.
000000    01 I001 PIC S9(8) VALUE 32.
000000    01 IDIV PIC S9(8) VALUE 0.
000000    01 IREM PIC S9(8) VALUE 0.
000000 LINKAGE SECTION.
000000*------------------------------------------------------------------------
000000 PROCEDURE DIVISION.
000000  DISPLAY '----------------------------------------'
000000*------------------------------------------------------------------------
000000*MULTIPLY INT
000000*------------------------------------------------------------------------
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '/I001: 'I001.
000000  DISPLAY '========================================'
000000  DIVIDE I000 INTO I001 GIVING IDIV REMAINDER IREM.
000000  DISPLAY '=IDIV: 'IDIV.
000000  DISPLAY '=IREM: 'IREM.
000000  DISPLAY '----------------------------------------'
000000  EXIT PROGRAM.

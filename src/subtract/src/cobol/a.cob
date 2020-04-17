      * subtracts two or more numbers
      * note SUBTRACT A B FROM C D means 
      * 	(A+B)-(C+D)
000000 IDENTIFICATION DIVISION.
000000 PROGRAM-ID. fn.
000000 ENVIRONMENT DIVISION.
000000 DATA DIVISION.
000000    WORKING-STORAGE SECTION.
000000    01 I000 PIC S9(2) VALUE 1.
000000    01 I001 PIC S9(2) VALUE 2.
000000    01 I002 PIC S9(2) VALUE 3.
000000    01 I003 PIC S9(2) VALUE 4.
000000    01 I004 PIC S9(2) VALUE 5.
000000    01 ISUB PIC S9(3) VALUE 0.
000000 LINKAGE SECTION.
000000*------------------------------------------------------------------------
000000 PROCEDURE DIVISION.
000000  DISPLAY '----------------------------------------'
000000*------------------------------------------------------------------------
000000*SUBTRACT INT
000000*------------------------------------------------------------------------
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '-I001: 'I001.
000000  DISPLAY '========================================'
000000  SUBTRACT I000 FROM I001 GIVING ISUB.
000000  DISPLAY '=ISUB: 'ISUB.
000000  DISPLAY '----------------------------------------'
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '-I001: 'I001.
000000  DISPLAY '-I002: 'I002.
000000  DISPLAY '========================================'
000000  SUBTRACT I000 I001 FROM I002 GIVING ISUB.
000000  DISPLAY '=ISUB: 'ISUB.
000000  DISPLAY '----------------------------------------'
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '-I001: 'I001.
000000  DISPLAY '-I002: 'I002.
000000  DISPLAY '-I003: 'I003.
000000  DISPLAY '========================================'
000000  SUBTRACT I000 I001 I002 FROM I003 GIVING ISUB.
000000  DISPLAY '=ISUB: 'ISUB.
000000  DISPLAY '----------------------------------------'
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '-I001: 'I001.
000000  DISPLAY '-I002: 'I002.
000000  DISPLAY '-I003: 'I003.
000000  DISPLAY '-I004: 'I004.
000000  DISPLAY '========================================'
000000  SUBTRACT I000 I001 I002 I003 FROM I004 GIVING ISUB.
000000  DISPLAY '=ISUB: 'ISUB.
000000  DISPLAY '----------------------------------------'
000000  EXIT PROGRAM.

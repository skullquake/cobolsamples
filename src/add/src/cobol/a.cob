      * add sums numbers
000000 IDENTIFICATION DIVISION.
000000 PROGRAM-ID. fn.
000000 ENVIRONMENT DIVISION.
000000 DATA DIVISION.
000000    WORKING-STORAGE SECTION.
000000    01 I000 PIC 9(2) VALUE 11.
000000    01 I001 PIC 9(2) VALUE 22.
000000    01 I002 PIC 9(2) VALUE 33.
000000    01 I003 PIC 9(2) VALUE 44.
000000    01 I004 PIC 9(2) VALUE 55.
000000    01 ISUM PIC 9(3) VALUE 000.
000000 LINKAGE SECTION.
000000*------------------------------------------------------------------------
000000 PROCEDURE DIVISION.
000000  DISPLAY '----------------------------------------'
000000*------------------------------------------------------------------------
000000*SWAP INT
000000*------------------------------------------------------------------------
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '+I001: 'I001.
000000  DISPLAY '========================================'
000000  ADD I000 TO I001 GIVING ISUM.
000000  DISPLAY '=ISUM: 'ISUM.
000000  DISPLAY '----------------------------------------'
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '+I001: 'I001.
000000  DISPLAY '+I002: 'I002.
000000  DISPLAY '========================================'
000000  ADD I000 I001 TO I002 GIVING ISUM.
000000  DISPLAY '=ISUM: 'ISUM.
000000  DISPLAY '----------------------------------------'
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '+I001: 'I001.
000000  DISPLAY '+I002: 'I002.
000000  DISPLAY '+I003: 'I003.
000000  DISPLAY '========================================'
000000  ADD I000 I001 I002 TO I003 GIVING ISUM.
000000  DISPLAY '=ISUM: 'ISUM.
000000  DISPLAY '----------------------------------------'
000000  DISPLAY ' I000: 'I000.
000000  DISPLAY '+I001: 'I001.
000000  DISPLAY '+I002: 'I002.
000000  DISPLAY '+I003: 'I003.
000000  DISPLAY '+I004: 'I004.
000000  DISPLAY '========================================'
000000  ADD I000 I001 I002 I003 TO I004 GIVING ISUM.
000000  DISPLAY '=ISUM: 'ISUM.
000000  DISPLAY '----------------------------------------'
000000  EXIT PROGRAM.

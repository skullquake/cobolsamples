      * --------------------------------------------------------------------------------
      * https://www.ibm.com/support/knowledgecenter/en/SSLTBW_2.3.0/com.ibm.zos.v2r3.ceea400/sdtpt.htm
      * --------------------------------------------------------------------------------
      * C (pointer to...) 	COBOL (by content/by reference)
      * --------------------------------------------------------------------------------
      * char			PIC X, PIC A
      * signed short int 	PIC S9(4) USAGE IS BINARY
      * unsigned short int 	PIC 9(4) USAGE IS BINARY
      * signed int, signed long	int 	PIC S9(9) USAGE IS BINARY
      * unsigned int		PIC 9(9) USAGE IS BINARY, LENGTH OF
      * unsigned long int 	PIC 9(9) USAGE IS BINARY
      * float			COMP-1
      * double			COMP-2
      * pointer to...		POINTER, ADDRESS OF
      * decimal			USAGE IS PACKED-DECIMAL
      * struct			Groups
      * type array[n]		Tables (OCCURS n TIMES)
      * --------------------------------------------------------------------------------
000000 IDENTIFICATION DIVISION.
000000  PROGRAM-ID. hello.
000000 DATA DIVISION.
000000    WORKING-STORAGE SECTION.
000000    01 I000 PIC S9(4) USAGE IS BINARY VALUE 3.
000000    01 I001 PIC S9(4)              VALUE 2.
000000    01 C000 PIC X                  VALUE 'a'.
000000    01 C001 PIC A                  VALUE 'a'.
000000*works for passing in numeric values (http://opencobol.add1tocobol.com/OpenCOBOL%20Programmers%20Guide.pdf page 167)
000000    01 I002 BINARY-CHAR            VALUE 12.
000000    01 I003 BINARY-CHAR UNSIGNED   VALUE 34.
000000    01 I004 BINARY-SHORT           VALUE 45.
000000    01 I005 BINARY-SHORT UNSIGNED  VALUE 56.
000000    01 I006 BINARY-SHORT SIGNED    VALUE -67.
000000    01 F000 COMPUTATIONAL-1        VALUE 1.23.
000000    01 F001 COMPUTATIONAL-2        VALUE 1.23.
000000    01 BC00 BINARY-CHAR            VALUE 12.
000000    01 BCU0 BINARY-CHAR UNSIGNED   VALUE 12.
000000    01 BCS0 BINARY-CHAR SIGNED     VALUE 12.
000000    01 BS00 BINARY-SHORT           VALUE 12.
000000    01 BSU0 BINARY-SHORT UNSIGNED  VALUE 12.
000000    01 BSS0 BINARY-SHORT SIGNED    VALUE 12.
000000    01 BL00 BINARY-LONG            VALUE 12.
000000    01 BLU0 BINARY-LONG UNSIGNED   VALUE 12.
000000    01 BCLS BINARY-C-LONG SIGNED   VALUE 12.
000000    01 BD00 BINARY-DOUBLE          VALUE 12.34.
000000    01 BDU0 BINARY-DOUBLE UNSIGNED VALUE 12.34.
000000    01 BDS0 BINARY-DOUBLE SIGNED   VALUE 12.34.
000000    01 CM10 COMPUTATIONAL-1        VALUE 12.34.
000000    01 CM20 COMPUTATIONAL-2        VALUE 12.34.
000000  PROCEDURE DIVISION.
000000*--------------------------------------------------------------------------------
000000*No arguments
000000*--------------------------------------------------------------------------------
000000   CALL "narg"
000000*--------------------------------------------------------------------------------
000000*Single chr argument
000000*--------------------------------------------------------------------------------
000000   CALL "parchr" USING 'a'.
000000   CALL "parchr" USING 'b'.
000000   CALL "parchr" USING 'c'.
000000   CALL "parchr" USING 'd'.
000000   CALL "parchr" USING C000.
000000   CALL "parchr" USING C001.
000000*--------------------------------------------------------------------------------
000000*Single int argument
000000*--------------------------------------------------------------------------------
000000   DISPLAY '--------------------------------------------'
000000   DISPLAY 'Matching C Data Types with OpenCobol USAGEs:'
000000   DISPLAY '--------------------------------------------'
000000   CALL "parint" USING 0.
000000   CALL "parint" USING 1.
000000   CALL "parint" USING 2.
000000   CALL "parint" USING 3.
000000   CALL "parint" USING I000.
000000   CALL "parint" USING I001.
000000   CALL "parint" USING I002.
000000   CALL "parint" USING I003.
000000   CALL "parint" USING I004.
000000   CALL "parint" USING I005.
000000   CALL "parint" USING I006.
000000   DISPLAY '--------------------------------------------'
000000   DISPLAY 'Matching C Data Types with OpenCobol USAGEs:'
000000   DISPLAY '--------------------------------------------'
000000   DISPLAY 'NUMERIC TESTS'
000000   DISPLAY '--------------------------------------------'
000000*  int paruchar(unsigned char*)---------------------BINARY-CHAR
000000*                                                   BINARY-CHAR UNSIGNED
000000   CALL 'paruchar'       USING 12.
000000   CALL 'paruchar'       USING BC00.
000000   CALL 'paruchar'       USING BCU0.
000000*  int parchar(char*)-------------------------------BINARY-CHAR SIGNED
000000   CALL 'parchar'        USING 12.
000000   CALL 'parchar'        USING BCS0.
000000*  int paruint(unsigned int*)-----------------------BINARY-SHORT
000000*                                                   BINARY-SHORT UNSIGNED
000000   CALL 'paruint'        USING 12.
000000   CALL 'paruint'        USING BS00.
000000   CALL 'paruint'        USING BSU0.
000000*  int parint(int*)---------------------------------BINARY-SHORT SIGNED
000000   CALL 'parint'         USING 12.
000000   CALL 'parint'         USING BSS0.
000000*  int parshort(short*)-----------------------------BINARY-SHORT SIGNED
000000   CALL 'parshort'       USING 12.
000000   CALL 'parshort'       USING BSS0.
000000*  int parushort(unsigned short*)-------------------BINARY-SHORT UNSIGNED
000000   CALL 'parushort'      USING 12.
000000   CALL 'parushort'      USING BSU0.
000000*  int parlong(long*)-------------------------------BINARY-LONG
000000   CALL 'parlong'        USING 12.
000000   CALL 'parlong'        USING BL00.
000000*  int parulong(unsigned long*)---------------------BINARY-LONG UNSIGNED
000000   CALL 'parulong'       USING 12.
000000   CALL 'parulong'       USING BLU0.
000000*  int parlonglong(long long*)----------------------BINARY-DOUBLE SIGNED
000000   CALL 'parlonglong'    USING 12.
000000   CALL 'parlonglong'    USING BDS0.
000000*  int parulonglong(unsigned long*)-----------------BINARY-DOUBLE UNSIGNED
000000   CALL 'parulonglong'   USING 12.
000000   CALL 'parulonglong'   USING BDU0.
000000*  int parlonglongint(long long int*)---------------BINARY-DOUBLE SIGNED
000000   CALL 'parlonglongint' USING 12.
000000   CALL 'parlonglongint' USING BDS0.
000000*  int parfloat(float*)-----------------------------COMPUTATIONAL-1
000000*                              literal does not work?
000000   CALL 'parfloat'       USING 12.34.
000000*                              variable works though
000000   CALL 'parfloat'       USING CM10.
000000*  int pardouble(double*)---------------------------COMPUTATIONAL-2
000000*                              literal does not work?
000000   CALL 'pardouble'      USING 12.34.
000000*                              variable works though
000000   CALL 'pardouble'      USING CM20.
000000   STOP RUN.


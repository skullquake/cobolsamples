       IDENTIFICATION DIVISION.
       PROGRAM-ID. cobf0.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       DATA DIVISION.
          WORKING-STORAGE SECTION.
          01 S000 PIC X(512).
          01 I000 PIC S9(4)              VALUE 3.
          01 I001 PIC S9(4)              VALUE 2.
          01 C000 PIC X                  VALUE 'a'.
          01 C001 PIC A                  VALUE 'a'.
      *works for passing in numeric values (http://opencobol.add1tocobol.com/OpenCOBOL%20Programmers%20Guide.pdf page 167)
          01 I002 BINARY-CHAR            VALUE 12.
          01 I003 BINARY-CHAR UNSIGNED   VALUE 34.
          01 I004 BINARY-SHORT           VALUE 45.
          01 I005 BINARY-SHORT UNSIGNED  VALUE 56.
          01 I006 BINARY-SHORT SIGNED    VALUE -67.
          01 F000 COMPUTATIONAL-1        VALUE 1.23.
          01 F001 COMPUTATIONAL-2        VALUE 1.23.
          01 BC00 BINARY-CHAR            VALUE 12.
          01 BCU0 BINARY-CHAR UNSIGNED   VALUE 12.
          01 BCS0 BINARY-CHAR SIGNED     VALUE 12.
          01 BS00 BINARY-SHORT           VALUE 12.
          01 BSU0 BINARY-SHORT UNSIGNED  VALUE 12.
          01 BSS0 BINARY-SHORT SIGNED    VALUE 12.
          01 BL00 BINARY-LONG            VALUE 12.
          01 BLU0 BINARY-LONG UNSIGNED   VALUE 12.
          01 BCLS BINARY-C-LONG SIGNED   VALUE 12.
          01 BD00 BINARY-DOUBLE          VALUE 12.34.
          01 BDU0 BINARY-DOUBLE UNSIGNED VALUE 12.34.
          01 BDS0 BINARY-DOUBLE SIGNED   VALUE 12.34.
          01 CM10 COMPUTATIONAL-1        VALUE 12.34.
          01 CM20 COMPUTATIONAL-2        VALUE 12.34.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
            DISPLAY 'cobf0'.
            DISPLAY '--------------------------------------------'
            DISPLAY 'Matching C Data Types with OpenCobol USAGEs:'
            DISPLAY '--------------------------------------------'
            CALL "parint" USING 0.
            CALL "parint" USING 1.
            CALL "parint" USING 2.
            CALL "parint" USING 3.
            CALL "parint" USING I000.
            CALL "parint" USING I001.
            CALL "parint" USING I002.
            CALL "parint" USING I003.
            CALL "parint" USING I004.
            CALL "parint" USING I005.
            CALL "parint" USING I006.
            DISPLAY '--------------------------------------------'
            DISPLAY 'Matching C Data Types with OpenCobol USAGEs:'
            DISPLAY '--------------------------------------------'
            DISPLAY 'NUMERIC TESTS'
            DISPLAY '--------------------------------------------'
      *  int paruchar(unsigned char*)---------------------BINARY-CHAR
      *                                                   BINARY-CHAR UNSIGNED
            CALL 'paruchar'       USING 12.
            CALL 'paruchar'       USING BC00.
            CALL 'paruchar'       USING BCU0.
      *  int parchar(char*)-------------------------------BINARY-CHAR SIGNED
            CALL 'parchar'        USING 12.
            CALL 'parchar'        USING BCS0.
      *  int paruint(unsigned int*)-----------------------BINARY-SHORT
      *                                                   BINARY-SHORT UNSIGNED
            CALL 'paruint'        USING 12.
            CALL 'paruint'        USING BS00.
            CALL 'paruint'        USING BSU0.
      *  int parint(int*)---------------------------------BINARY-SHORT SIGNED
            CALL 'parint'         USING 12.
            CALL 'parint'         USING BSS0.
      *  int parshort(short*)-----------------------------BINARY-SHORT SIGNED
            CALL 'parshort'       USING 12.
            CALL 'parshort'       USING BSS0.
      *  int parushort(unsigned short*)-------------------BINARY-SHORT UNSIGNED
            CALL 'parushort'      USING 12.
            CALL 'parushort'      USING BSU0.
      *  int parlong(long*)-------------------------------BINARY-LONG
            CALL 'parlong'        USING 12.
            CALL 'parlong'        USING BL00.
      *  int parulong(unsigned long*)---------------------BINARY-LONG UNSIGNED
            CALL 'parulong'       USING 12.
            CALL 'parulong'       USING BLU0.
      *  int parlonglong(long long*)----------------------BINARY-DOUBLE SIGNED
            CALL 'parlonglong'    USING 12.
            CALL 'parlonglong'    USING BDS0.
      *  int parulonglong(unsigned long*)-----------------BINARY-DOUBLE UNSIGNED
            CALL 'parulonglong'   USING 12.
            CALL 'parulonglong'   USING BDU0.
      *  int parlonglongint(long long int*)---------------BINARY-DOUBLE SIGNED
            CALL 'parlonglongint' USING 12.
            CALL 'parlonglongint' USING BDS0.
      *  int parfloat(float*)-----------------------------COMPUTATIONAL-1
      *                              literal does not work?
            CALL 'parfloat'       USING 12.34.
      *                              variable works though
            CALL 'parfloat'       USING CM10.
      *  int pardouble(double*)---------------------------COMPUTATIONAL-2
      *                              literal does not work?
            CALL 'pardouble'      USING 12.34.
      *                              variable works though
            CALL 'pardouble'      USING CM20.
      *  ----------------------------------------------------------------
      *  string parameters
      *  ----------------------------------------------------------------
            SET S000 TO 'FOOBAR'.
            DISPLAY S000.
      *  int parstr(char*,int)----------------------------
            COMPUTE BS00= LENGTH OF S000
            DISPLAY BS00
            CALL 'parstr' USING 'asdf' 4
            CALL 'parstr' USING S000 BS00
      *  int parcstr(char*)-------------------------------
      *  concatenate extra '\0' as follows
      *  note escapement method, e.g. for newline 
            STRING
                X'0A'
                '----------------------------------------' X'0A'
                'Lorem ipsum' X'0A'
                'sit consecutar' X'0A'
                'dolar amet' X'0A'
                '----------------------------------------' X'0A'
                X'00'
            INTO S000.
      *     STRING S000 'Lorem ipsum sit consecutar' INTO S000.
      *     STRING S000 X'00' INTO S000.
            DISPLAY S000.
            CALL 'parcstr' USING S000
      *     test partolower
            CALL 'partolower' USING S000
            DISPLAY S000
      *     test partoupper
            CALL 'partoupper' USING S000
            DISPLAY S000
            EXIT PROGRAM.

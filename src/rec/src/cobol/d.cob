       IDENTIFICATION DIVISION.
       PROGRAM-ID. fnd.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       LINKAGE SECTION.
       01 hello PIC X(7).
       01 world PIC X(6).
       PROCEDURE DIVISION using hello world.
            DISPLAY hello world.
            DISPLAY 'asdf'.
            EXIT PROGRAM.

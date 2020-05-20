      ******************************************************************
      * Author: yvanscher.
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONALS.
       DATA DIVISION.
              WORKING-STORAGE SECTION.
              *> setting up places to store values
              *> no values set yet
              01 NUM1 PIC 9(9).
              01 NUM2 PIC 9(9).
              01 NUM3 PIC 9(5).
              01 NUM4 PIC 9(6).
              *> create a positive and a negative
              *> number to check
              01 NEG-NUM PIC S9(9) VALUE -1234.
              *> create variables for testing classes
              01 CLASS1 PIC X(9) VALUE 'ABCD '.
              *> create statements that can be fed
              *> into a cobol conditional
              01 CHECK-VAL PIC 9(3).
                88 PASS VALUES ARE 041 THRU 100.
                88 FAIL VALUES ARE 000 THRU 40.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
              *> NOT, negating a conditional
              MOVE 50 TO NUM1.
              MOVE 60 TO NUM2.
              IF NOT NUM2 IS LESS THAN NUM1 THEN
                DISPLAY NUM2' IS NOT LESS THAN 'NUM1
              END-IF

              *> AND, having multiple conditionals
              IF NUM1 IS LESS THAN NUM2 AND NUM1 IS LESS THAN 100 THEN
                DISPLAY 'COMBINED CONDITION'
              ELSE
                DISPLAY 'NAH'
              END-IF

              *> checking for negative or positive values
              IF NEG-NUM IS POSITIVE OR NEG-NUM IS NEGATIVE THEN
                DISPLAY 'A NUMBER IS POSITIVE'.

              *> checking for negative or positive values
              IF NEG-NUM IS NEGATIVE THEN
                DISPLAY 'A NUMBER IS NEGATIVE'.

              *> checking if a variable is a certain
              *> data type
              IF CLASS1 IS ALPHABETIC OR CLASS1 IS NUMERIC THEN
                DISPLAY 'CLASS1 IS ALPHABETIC or numeric'.
            STOP RUN.
       END PROGRAM CONDITIONALS.

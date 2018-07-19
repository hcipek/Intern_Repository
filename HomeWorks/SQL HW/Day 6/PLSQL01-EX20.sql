/*Author : Hakan C. ?pek
25.06.2018
Program that prints equilateral quadrangle in a file. Mathematics used in if loops. Takes input for size
*/
CREATE OR REPLACE DIRECTORY WRITE_EMP_DIR AS '/Users/7282/Desktop';
/
CREATE OR REPLACE PACKAGE HR.PALETTE IS
    PROCEDURE DrawPyramid(pin_Size IN NUMBER);
    PROCEDURE FirstHalfOfPyramid(pin_Size IN NUMBER);
    PROCEDURE SecondHalfOfPyramid(pin_Size IN NUMBER);
    PROCEDURE Definitions;
END PALETTE;
/
CREATE OR REPLACE PACKAGE BODY HR.PALETTE AS
    PROCEDURE DrawPyramid(pin_Size IN NUMBER)
    IS
        myFile UTL_FILE.FILE_TYPE;
        row_index NUMBER;
        min_value NUMBER;
        column_index NUMBER;
        lower_space NUMBER;
        higher_space NUMBER;
    BEGIN
        myFile := UTL_FILE.FOPEN('WRITE_EMP_DIR', 'temp.txt', 'w');
        row_index := 1;
        min_value := 1;
        
        FOR row_index IN min_value..(pin_Size+1)/2 LOOP
            column_index := 1;
            lower_space := (pin_Size+1)/2-row_index+1;
            higher_space := (pin_Size+1)/2+row_index-1;
            FOR column_index IN min_value..(pin_Size) LOOP
                IF  (lower_space<column_index AND column_index<higher_space 
                    OR lower_space=column_index OR column_index=higher_space) THEN
                    UTL_FILE.PUTF(myFile, '*');
                ELSE
                    UTL_FILE.PUTF(myFile, ' ');
                END IF;
            END LOOP;
            UTL_FILE.PUTF(myFile, '\n');
        END LOOP;
        FOR row_index IN (pin_Size+1)/2+1..pin_Size LOOP
            column_index := 1;
            lower_space := row_index-(pin_Size+1)/2+1;
            higher_space := pin_Size-(row_index-(pin_Size+1)/2);
            FOR column_index IN min_value..(pin_Size) LOOP
                IF  (lower_space<column_index AND column_index<higher_space 
                    OR lower_space=column_index OR column_index=higher_space) THEN
                    UTL_FILE.PUTF(myFile, '*');
                ELSE
                    UTL_FILE.PUTF(myFile, ' ');
                END IF;
            END LOOP;
            UTL_FILE.PUTF(myFile, '\n');
        END LOOP;
    UTL_FILE.FCLOSE(myFile);
    END;
END PALETTE;
/
EXECUTE HR.PALETTE.DrawPyramid(31);
/

/*Author : Hakan C. ?pek
25.06.2018
Program that prints equilateral quadrangle in a file. Mathematics used in if loops.
*/
CREATE OR REPLACE DIRECTORY PYRAMID_DIR AS '/Users/7282/Desktop';
/
CREATE OR REPLACE PACKAGE HR.PALETTE IS
    PROCEDURE DrawPyramid(pin_Size IN NUMBER);
    FUNCTION FirstHalfOfPyramid(pin_Size IN NUMBER, func_row_index IN NUMBER, func_filePointer IN SYS.UTL_FILE.FILE_TYPE ) RETURN NUMBER;
    PROCEDURE SecondHalfOfPyramid(pin_Size IN NUMBER, proc_row_index IN NUMBER, proc_filePointer IN SYS.UTL_FILE.FILE_TYPE);
END PALETTE;
/
CREATE OR REPLACE PACKAGE BODY HR.PALETTE AS
    PROCEDURE DrawPyramid(pin_Size IN NUMBER)
    IS
        filePointer UTL_FILE.FILE_TYPE;
        row_index NUMBER;
    BEGIN
        filePointer := UTL_FILE.FOPEN('PYRAMID_DIR', 'temp.txt', 'w');
        row_index := 1;
        row_index := HR.PALETTE.FirstHalfOfPyramid(pin_Size, row_index, filePointer);
        HR.PALETTE.SecondHalfOfPyramid(pin_Size, row_index, filePointer);
        UTL_FILE.FCLOSE(filePointer);
    END;
    FUNCTION FirstHalfOfPyramid(pin_Size IN NUMBER, func_row_index IN NUMBER, func_filePointer IN SYS.UTL_FILE.FILE_TYPE ) RETURN NUMBER
    IS
        lower_space NUMBER;
        higher_space NUMBER;
        column_index NUMBER;
    BEGIN
        FOR func_row_index IN 1..(pin_Size+1)/2 LOOP
            column_index := 1;
            lower_space := (pin_Size+1)/2-func_row_index+1;
            higher_space := (pin_Size+1)/2+func_row_index-1;
            FOR column_index IN 1..pin_Size LOOP
                IF  (lower_space<column_index AND column_index<higher_space 
                    OR lower_space=column_index OR column_index=higher_space) THEN
                    UTL_FILE.PUTF(func_filePointer, '*');
                ELSE
                    UTL_FILE.PUTF(func_filePointer, ' ');
                END IF;
            END LOOP;
            UTL_FILE.PUTF(func_filePointer, '\n');
        END LOOP;
    RETURN func_row_index;
    END;
    PROCEDURE SecondHalfOfPyramid(pin_Size IN NUMBER, proc_row_index IN NUMBER, proc_filePointer IN SYS.UTL_FILE.FILE_TYPE)
    IS
        lower_space NUMBER;
        higher_space NUMBER;
        column_index NUMBER;
    BEGIN
        FOR proc_row_index IN (pin_Size+1)/2+1..pin_Size LOOP
            column_index := 1;
            lower_space := proc_row_index-(pin_Size+1)/2+1;
            higher_space := pin_Size-(proc_row_index-(pin_Size+1)/2);
            FOR column_index IN 1..pin_Size LOOP
                IF  (lower_space<column_index AND column_index<higher_space 
                    OR lower_space=column_index OR column_index=higher_space) THEN
                    UTL_FILE.PUTF(proc_filePointer, '*');
                ELSE
                    UTL_FILE.PUTF(proc_filePointer, ' ');
                END IF;
            END LOOP;
            UTL_FILE.PUTF(proc_filePointer, '\n');
        END LOOP;    
    END;
END PALETTE;
/
ACCEPT userInput NUMBER PROMPT 'Enter size of Pyramid : ';
    
DECLARE
    pointer_userInput NUMBER;
BEGIN
    pointer_userInput := &userInput;
    HR.PALETTE.DRAWPYRAMID(pointer_userInput);
END;
/
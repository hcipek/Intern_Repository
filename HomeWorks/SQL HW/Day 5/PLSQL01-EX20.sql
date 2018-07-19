/*Author : Hakan C. ?pek
25.06.2018
A PL/SQL code that has a package with 2 procedures. 
First one writes all employee first and last names to a .txt file.
Second procedure read from that .txt file and put id before all first and last names.
*/

CREATE OR REPLACE DIRECTORY MYDIR AS '/Users/7282/Desktop';
/
CREATE OR REPLACE PACKAGE staj_utility IS
    PROCEDURE write_a_file;
    PROCEDURE read_a_file;
END staj_utility; 
/
CREATE OR REPLACE PACKAGE BODY staj_utility AS
    PROCEDURE write_a_file
    IS  
        myFile UTL_FILE.FILE_TYPE;
        CURSOR C1
        IS( SELECT *
            FROM HR.EMPLOYEES);
    BEGIN
        myFile := UTL_FILE.FOPEN('MYDIR', 'temp.txt', 'w');
        FOR REC IN C1 LOOP
            UTL_FILE.PUTF(myFile, REC.FIRST_NAME|| ' ' || REC.LAST_NAME || '\n');
        END LOOP;
        UTL_FILE.FCLOSE(myFile);
    END;
          
    PROCEDURE read_a_file
    IS
        myFile UTL_FILE.FILE_TYPE;
        myText      varchar2(4000);
        CURSOR C1
        IS( SELECT *
            FROM HR.EMPLOYEES);
    BEGIN
        myFile := UTL_FILE.FOPEN('MYDIR', 'temp.txt', 'r');
        FOR REC IN C1 LOOP
            UTL_FILE.GET_LINE(myFile, myText);
            dbms_output.put_line('DATA FROM FILE: ID : '|| REC.EMPLOYEE_ID || ' FIRST NAME- LAST NAME : ' ||myText);
        END LOOP;
        UTL_FILE.FCLOSE(myFile);
    END;
    
END staj_utility;
/

EXECUTE staj_utility.write_a_file;
/
EXECUTE staj_utility.read_a_file;
/
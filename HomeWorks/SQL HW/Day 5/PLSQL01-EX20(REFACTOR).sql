/*Author : Hakan C. ?pek
25.06.2018
A PL/SQL code that has a package with 2 procedures. 
First one writes all employee first and last names to a .txt file.
Second procedure read from that .txt file and put id before all first and last names.
*/

CREATE OR REPLACE DIRECTORY WRITE_EMP_DIR AS '/Users/7282/Desktop';
/
CREATE OR REPLACE PACKAGE hr.staj_utility IS
    PROCEDURE write_emp_names_to_file;
    PROCEDURE read_emp_names_from_file;
END staj_utility; 
/
CREATE OR REPLACE PACKAGE BODY hr.staj_utility AS
    PROCEDURE write_emp_names_to_file
    IS  
        filePointer UTL_FILE.FILE_TYPE;
        file_name   varchar2(30);
        CURSOR C1
        IS( SELECT HR.EMPLOYEES.FIRST_NAME, HR.EMPLOYEES.LAST_NAME
            FROM HR.EMPLOYEES);
    BEGIN
        file_name := 'temp.txt';
        filePointer := UTL_FILE.FOPEN('WRITE_EMP_DIR', file_name, 'w');
        FOR REC IN C1 LOOP
            UTL_FILE.PUTF(filePointer, REC.FIRST_NAME|| ' ' || REC.LAST_NAME || '\n');
        END LOOP;
        UTL_FILE.FCLOSE(filePointer);
    END;
          
    PROCEDURE read_emp_names_from_file
    IS
        filePointer  UTL_FILE.FILE_TYPE;
        file_name    varchar2(30):= 'temp.txt';
        text_printer varchar2(250);
        CURSOR C1
        IS( SELECT HR.EMPLOYEES.EMPLOYEE_ID
            FROM HR.EMPLOYEES);
    BEGIN
        filePointer := UTL_FILE.FOPEN('WRITE_EMP_DIR', file_name, 'r');
        FOR REC IN C1 LOOP
            UTL_FILE.GET_LINE(filePointer, text_printer);
            dbms_output.put_line('DATA FROM FILE: ID : '|| REC.EMPLOYEE_ID || ' FIRST NAME- LAST NAME : ' ||text_printer);
        END LOOP;
        UTL_FILE.FCLOSE(filePointer);
    END read_emp_names_from_file;
    
END staj_utility;
/

EXECUTE hr.staj_utility.write_emp_names_to_file;
/
EXECUTE hr.staj_utility.read_emp_names_from_file;
/
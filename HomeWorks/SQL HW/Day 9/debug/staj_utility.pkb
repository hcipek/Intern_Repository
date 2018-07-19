CREATE OR REPLACE PACKAGE BODY hr.staj_utility AS
    FUNCTION get_emp_first_name(pin_id IN EMPLOYEES.EMPLOYEE_ID%TYPE ) RETURN VARCHAR2
    IS
        vs_emp_first_name EMPLOYEES.FIRST_NAME%TYPE;
    BEGIN
        SELECT EMP.FIRST_NAME INTO vs_emp_first_name 
        FROM   EMPLOYEES EMP 
        WHERE  EMP.EMPLOYEE_ID = pin_id;
        RETURN vs_emp_first_name;
    END get_emp_first_name;
    PROCEDURE run_get_emp_first_name(pin_id IN HR.EMPLOYEES.EMPLOYEE_ID%TYPE)
    IS
        vn_emp_id NUMBER;
        vn_min_emp_id NUMBER;
        vn_max_emp_id NUMBER;
        vs_no_data_found_output VARCHAR2(100);
    BEGIN
        vn_emp_id := 260;
        vn_min_emp_id := 100;
        vn_max_emp_id := 206;
        vs_no_data_found_output := 'OUT OF BOUNDS!';
        IF (vn_emp_id < vn_max_emp_id AND vn_min_emp_id < vn_emp_id) THEN
            dbms_output.put_line(GET_EMP_FIRST_NAME(vn_emp_id));
        ELSE
            dbms_output.put_line(vs_no_data_found_output);
        END IF;
    END run_get_emp_first_name;
END staj_utility;

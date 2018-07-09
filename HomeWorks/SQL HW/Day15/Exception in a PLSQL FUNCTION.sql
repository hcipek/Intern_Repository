/* Author : Hakan C. ?pek
27.06.2018
This function gets employee id and return its name from employees table Throws a exception when input is out of employee_id range.
*/
CREATE OR REPLACE FUNCTION hr.func_get_emp_first_name(pin_id IN HR.EMPLOYEES.EMPLOYEE_ID%TYPE ) RETURN VARCHAR2
IS
    vs_emp_first_name HR.EMPLOYEES.FIRST_NAME%TYPE;
    exception_employee_not_found EXCEPTION;
    vn_min_id NUMBER;
    vn_max_id NUMBER;
BEGIN
    SELECT MIN(HR.EMPLOYEES.EMPLOYEE_ID) INTO vn_min_id
        FROM HR.EMPLOYEES;
    SELECT MAX(HR.EMPLOYEES.EMPLOYEE_ID) INTO vn_max_id
        FROM HR.EMPLOYEES;
    IF pin_id<vn_min_id OR pin_id>vn_max_id THEN
        RAISE exception_employee_not_found;
    END IF;
    SELECT EMP.FIRST_NAME INTO vs_emp_first_name 
    FROM   EMPLOYEES EMP 
    WHERE  EMP.EMPLOYEE_ID = pin_id;
    RETURN vs_emp_first_name;
EXCEPTION
    WHEN exception_employee_not_found THEN
        RETURN 'EMPLOYEE_NOT_FOUND';    
END func_get_emp_first_name;
/
DECLARE
    vn_emp_id NUMBER;
BEGIN
    vn_emp_id := 250;
    dbms_output.put_line(FUNC_GET_EMP_FIRST_NAME(vn_emp_id));
END;
/
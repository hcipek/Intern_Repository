CREATE OR REPLACE PACKAGE hr.staj_utility AS
    FUNCTION get_emp_first_name(pin_id IN EMPLOYEES.EMPLOYEE_ID%TYPE ) RETURN VARCHAR2;
    PROCEDURE run_get_emp_first_name(pin_id IN HR.EMPLOYEES.EMPLOYEE_ID%TYPE);
END staj_utility;

/* @Hakan C. Ipek
22.06.2018
Create to procedure that displays first_name by employee_id in package. */

CREATE OR REPLACE PACKAGE staj_utility IS
   PROCEDURE show_emp_name(emp_id IN hr.employees.employee_id%TYPE);
   FUNCTION get_emp_name(emp_id IN hr.employees.employee_id%TYPE) RETURN VARCHAR2;
END staj_utility; 
/
CREATE OR REPLACE PACKAGE BODY staj_utility AS
    FUNCTION get_emp_name(emp_id IN hr.employees.employee_id%TYPE) RETURN VARCHAR2
    IS  
        emp_name VARCHAR2(40);
    BEGIN
        SELECT emp.first_name INTO emp_name
        FROM hr.employees emp
        WHERE emp_id=emp.employee_id;
        RETURN emp_name;
    END;
        
    PROCEDURE show_emp_name(emp_id IN hr.employees.employee_id%TYPE)
    IS
    BEGIN
        dbms_output.put_line(get_emp_name(emp_id));
    END;
    
END staj_utility;
/

EXECUTE staj_utility.SHOW_EMP_NAME(100);
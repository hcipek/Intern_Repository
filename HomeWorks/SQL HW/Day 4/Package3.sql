/* @Hakan C. Ipek
22.06.2018
Create to procedure that displays all first_name in package.*/

CREATE OR REPLACE PACKAGE staj_utility IS
    FUNCTION get_emp_name(emp_id IN hr.employees.employee_id%TYPE) RETURN VARCHAR2;
    PROCEDURE show_all_names;
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
          
    PROCEDURE show_all_names
    IS

    BEGIN
        FOR rec IN  (SELECT employee_id FROM hr.employees)
        LOOP
            dbms_output.put_line(get_emp_name(rec.employee_id));
        END LOOP;    
    END;
    
END staj_utility;
/

EXECUTE staj_utility.show_all_names;
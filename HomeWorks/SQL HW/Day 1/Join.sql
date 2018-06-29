/*	Created By : Hakan C. İpek
	Version : 1.0
	Date : 21.06.2018
	This program selects employee’s id, employee’s first name and employee’s department name for all employees. */

SELECT
    EMPLOYEES.EMPLOYEE_ID,
    EMPLOYEES.FIRST_NAME,
    DEPARTMENTS.DEPARTMENT_NAME
FROM
    HR.EMPLOYEES
    JOIN HR.DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;
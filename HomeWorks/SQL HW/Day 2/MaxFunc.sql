/*  Created by : Hakan C. İpek
    Version : 1.0
    Date : 21.06.2018
    This program selects first name of the employee with highest employee id. 
*/

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE EMPLOYEE_ID= (SELECT MAX(EMPLOYEE_ID) FROM EMPLOYEES);
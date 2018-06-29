/*  Created by : Hakan C. İpek
    Version : 1.0
    Date : 21.06.2018
    This program displays all employees, and indicate with the words Yes or No whether they receive a commission.
*/

SELECT LAST_NAME, SALARY,
CASE COMMISSION_PCT
	WHEN NULL 
    THEN 'YES'
	ELSE 'NO'
END
AS COMMISSION
FROM EMPLOYEES;
/*  Created by : Hakan C. İpek
    Version : 1.0
    Date : 21.06.2018
    This program prints out all first and last names from HR.EMPLOYEES table.
*/

BEGIN
    FOR REC 
    IN (SELECT * FROM EMPLOYEES ) LOOP
        DBMS_OUTPUT.PUT_LINE('FIRST NAME - LAST NAME = '|| REC.FIRST_NAME || ' ' || REC.LAST_NAME);
    END LOOP;
END;
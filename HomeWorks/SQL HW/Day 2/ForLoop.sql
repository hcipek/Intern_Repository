/*  Created by : Hakan C. İpek
    Version : 1.0
    Date : 21.06.2018
    This program prints out all even numbers between 1 and 20.
*/

DECLARE I NUMBER;

BEGIN
    I := 1;
    FOR I IN 1..20 LOOP
        IF MOD(I, 2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(I); 
        END IF;
    END LOOP;
END;
/
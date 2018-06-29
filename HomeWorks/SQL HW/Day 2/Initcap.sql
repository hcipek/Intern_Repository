/*  Created by : Hakan C. İpek
    Version : 1.0
    Date : 21.06.2018
    This program extracts a structured text into meaningful pieces.
*/

DECLARE 
        NAME1 VARCHAR2(20);   
        SURNAME1 VARCHAR2(20);
        NAME2 VARCHAR2(20);
    	SURNAME2 VARCHAR2(20);
BEGIN
    	NAME1 := 'ERMAN';
    	SURNAME1 := 'iBrAhim';
    	NAME2 := 'MuSTafA';
    	SURNAME2:= 'DEmiR';
    
    	DBMS_OUTPUT.PUT_LINE('NAME - SURNAME = ' || INITCAP(NAME1) || ' ' || INITCAP(SURNAME1));
    	DBMS_OUTPUT.PUT_LINE('NAME - SURNAME = ' || INITCAP(NAME2) || ' ' || INITCAP(SURNAME2));


END;

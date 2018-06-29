/* Author : Hakan C. İpek
22.06.2018
Create a procedure that displays date's day with name print_day. 
*/
CREATE OR REPLACE PROCEDURE print_day
IS        
BEGIN
    dbms_output.put_line(to_char(sysdate, 'Day'));      
END print_day;
/
EXECUTE   print_day;

/*Author : Hakan C. İpek
22.06.2018
Create a Procedure that displays date's day.  Use get_day() function in Procedure. */

CREATE OR REPLACE PROCEDURE print_day_input(print VARCHAR2)
    IS
        
    BEGIN
        dbms_output.put_line(get_day(print));
        
    END print_day_input;
/
EXECUTE print_day_input(SYSDATE);
/
CREATE OR REPLACE PROCEDURE print_day_noinput
    IS
            
    BEGIN
        dbms_output.put_line(get_day(SYSDATE));
    END print_day_noinput;
/
    
EXECUTE print_day_noinput;
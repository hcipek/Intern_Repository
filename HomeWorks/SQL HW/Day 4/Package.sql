/* Author : Hakan C. Ipek
22,06,2018
Create a package with name staj_utility. Use to  get_day  function and  print_day procedure in package.*/

CREATE OR REPLACE PACKAGE staj_utility IS
   PROCEDURE print_day;
   FUNCTION get_day (pid_InputDate IN DATE) RETURN VARCHAR2;

END staj_utility; 
/
CREATE OR REPLACE PACKAGE BODY staj_utility AS
    FUNCTION get_day (pid_InputDate IN DATE) RETURN VARCHAR2
    IS 
    BEGIN
        RETURN to_char(pid_InputDate, 'Day');
    END;    
    
    PROCEDURE print_day
    IS
            
    BEGIN
        dbms_output.put_line(get_day(SYSDATE));
    END;
    
END staj_utility;
/

EXECUTE staj_utility.print_day;
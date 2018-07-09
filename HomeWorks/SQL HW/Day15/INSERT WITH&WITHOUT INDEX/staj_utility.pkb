/*@Hakan C. ?pek
7.9.18
This is a package body that has function and procedure, function is calculating how much time past inserting rows.
Procedure uses that function to calculate exact time to require inserting.
*/

 CREATE OR REPLACE PACKAGE BODY hr.staj_utility AS
    FUNCTION how_much_seconds_past(pin_insert_start_seconds IN NUMBER, pin_insert_end_seconds IN NUMBER) RETURN NUMBER
    IS
        vn_return_value NUMBER;
    BEGIN
        vn_return_value := pin_insert_end_seconds - pin_insert_start_seconds;
        RETURN vn_return_value;
    END how_much_seconds_past;
    PROCEDURE insert_rows(pin_row_value IN NUMBER)
    IS
        vn_start_of_insert NUMBER;
        vn_end_of_insert NUMBER;
        vn_operation_end_time NUMBER;
        vn_iter NUMBER;
    BEGIN
        vn_iter := 1;
        dbms_output.put_line(pin_row_value||' insert ediliyor');
        vn_start_of_insert := dbms_utility.get_time();
        FOR vn_iter IN 1..pin_row_value LOOP
            INSERT INTO hr.template (id, name) VALUES (vn_iter, 'selam'||vn_iter);
        END LOOP;
        vn_end_of_insert := dbms_utility.get_time();
        dbms_output.put_line('Insert edilme süresi : '||how_much_seconds_past(vn_start_of_insert, vn_end_of_insert)||'.');
    END insert_rows;
END staj_utility;
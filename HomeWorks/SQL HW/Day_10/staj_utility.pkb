CREATE OR REPLACE PACKAGE BODY hr.staj_utility AS
    FUNCTION how_much_seconds_past(pin_insert_start_seconds IN NUMBER, pin_insert_end_seconds IN NUMBER) RETURN NUMBER
    IS
        vn_return_value NUMBER;
    BEGIN
        vn_return_value := pin_insert_end_seconds - pin_insert_start_seconds;
        RETURN vn_return_value;
    END how_much_seconds_past;
    PROCEDURE insert_rows(pin_row_value IN NUMBER, pis_operation_name IN VARCHAR2)
    IS
        vn_start_of_insert NUMBER;
        vn_end_of_insert NUMBER;
        vn_commit_time NUMBER;
        vn_rollback_time NUMBER;
        vn_iter NUMBER;
    BEGIN
        vn_iter := 1;
        dbms_output.put_line(pin_row_value||' insert ediliyor');
        vn_start_of_insert := dbms_utility.get_time();
        FOR vn_iter IN 1..pin_row_value LOOP
            INSERT INTO hr.template (id, name) VALUES (vn_iter, 'selam'||vn_iter);
        END LOOP;
        vn_end_of_insert := dbms_utility.get_time();
        dbms_output.put_line('Insert edilme süresi : '||how_much_seconds_past(vn_start_of_insert, vn_end_of_insert)|| ' saniye.');
        IF pis_operation_name = 'commit' THEN
            COMMIT;
            vn_commit_time := dbms_utility.get_time();
            dbms_output.put_line('Commit edilme süresi : '||how_much_seconds_past(vn_end_of_insert, vn_commit_time)|| ' saniye.');
        ELSIF pis_operation_name = 'rollback' THEN
            ROLLBACK;
            vn_rollback_time := dbms_utility.get_time();
            dbms_output.put_line('Rollback edilme süresi : '||how_much_seconds_past(vn_end_of_insert, vn_rollback_time)|| ' saniye.');
        ELSE
            dbms_output.put_line('Wrong Operation Name');
        END IF;
    END insert_rows;
END staj_utility;
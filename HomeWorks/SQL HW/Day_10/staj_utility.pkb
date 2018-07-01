CREATE OR REPLACE PACKAGE BODY hr.staj_utility AS
    FUNCTION get_seconds RETURN NUMBER
    IS
        vn_hour NUMBER;
        vn_minute NUMBER;
        vn_second NUMBER;
        vn_return_value NUMBER;
    BEGIN
        SELECT to_char(SYSDATE, 'HH') INTO vn_hour FROM dual;
        SELECT to_char(SYSDATE, 'MI') INTO vn_minute FROM dual;
        SELECT to_char(SYSDATE, 'SS') INTO vn_second FROM dual;
        vn_return_value := (vn_hour*3600)+(vn_minute*60)+vn_second;
        RETURN vn_return_value;
    END get_seconds;
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
        vn_commit_time NUMBER;
        vn_rollback_time NUMBER;
        vn_iter NUMBER;
    BEGIN
        vn_iter := 1;
        dbms_output.put_line(pin_row_value||' insert ediliyor');
        vn_start_of_insert := get_seconds;
        FOR vn_iter IN 1..pin_row_value LOOP
            INSERT INTO hr.template (id, name) VALUES (vn_iter, 'selam'||vn_iter);
        END LOOP;
        vn_end_of_insert := get_seconds;
        COMMIT;
        vn_commit_time := get_seconds;
        ROLLBACK;
        vn_rollback_time := get_seconds; 
        dbms_output.put_line('Insert edilme süresi : '||how_much_seconds_past(vn_start_of_insert, vn_end_of_insert)|| ' saniye.'); 
        dbms_output.put_line('Commit edilme süresi : '||how_much_seconds_past(vn_end_of_insert, vn_commit_time)|| ' saniye.'); 
        dbms_output.put_line('Rollback edilme süresi : '||how_much_seconds_past(vn_commit_time, vn_rollback_time)|| ' saniye.'); 
    END insert_rows;
END staj_utility;
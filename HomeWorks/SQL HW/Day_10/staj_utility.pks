CREATE OR REPLACE PACKAGE hr.staj_utility AS
    FUNCTION get_seconds RETURN NUMBER;
    FUNCTION how_much_seconds_past(pin_insert_start_seconds IN NUMBER, pin_insert_end_seconds IN NUMBER) RETURN NUMBER;
    PROCEDURE insert_rows(pin_row_value IN NUMBER);
END staj_utility;
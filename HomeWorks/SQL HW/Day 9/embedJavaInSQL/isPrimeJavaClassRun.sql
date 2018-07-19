CREATE OR REPLACE FUNCTION func_prime_checker RETURN VARCHAR2 AS
LANGUAGE JAVA NAME 'primeChecker.isItPrime() return java.lang.String';
/

DECLARE
    vs_output VARCHAR2(400);
    vn_input  NUMBER;
BEGIN
   vs_output := Checker(vn_input);
   dbms_output.put_line(vs_output);
END;
/


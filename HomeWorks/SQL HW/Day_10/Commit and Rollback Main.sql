@/Users/7282/Desktop/SQL_HW/Day_10/staj_utility.pkb;
@/Users/7282/Desktop/SQL_HW/Day_10/staj_utility.pks;

EXECUTE staj_utility.INSERT_ROWS(1000);
EXECUTE staj_utility.INSERT_ROWS(10000);
EXECUTE staj_utility.INSERT_ROWS(100000);
EXECUTE staj_utility.INSERT_ROWS(1000000);

SELECT * FROM HR.TEMPLATE;

CREATE TABLE hr.template(id NUMBER, name VARCHAR2(20)) ;            
DROP TABLE hr.template;
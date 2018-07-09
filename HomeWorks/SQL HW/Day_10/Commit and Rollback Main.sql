@/Users/7282/Desktop/staj_utility.pkb;
@/Users/7282/Desktop/staj_utility.pks;

EXECUTE staj_utility.INSERT_ROWS(1000, 'commit');
EXECUTE staj_utility.INSERT_ROWS(1000, 'rollback');
EXECUTE staj_utility.INSERT_ROWS(10000, 'commit');
EXECUTE staj_utility.INSERT_ROWS(10000, 'rollback');
EXECUTE staj_utility.INSERT_ROWS(100000, 'commit');
EXECUTE staj_utility.INSERT_ROWS(100000, 'rollback');
EXECUTE staj_utility.INSERT_ROWS(1000000, 'commit');
EXECUTE staj_utility.INSERT_ROWS(1000000, 'rollback');

SELECT * FROM HR.TEMPLATE;

CREATE TABLE hr.template(id NUMBER, name VARCHAR2(20)) ;            
DROP TABLE hr.template;
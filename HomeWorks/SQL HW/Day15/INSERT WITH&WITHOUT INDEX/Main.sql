/*@Hakan C. ?pek
7.9.2018
This main sql file has required codes for creating a table, insert rows, create index and insert rows with created index
And a function that return the time past inserting without index and insert with index.
*/

@staj_utility.pkb;
@staj_utility.pks;

CREATE TABLE hr.template(id NUMBER, name VARCHAR2(20)); 

CREATE SEQUENCE seq_insert_rows 
INCREMENT BY 1
START WITH 1
CACHE 100;

EXECUTE staj_utility.INSERT_ROWS(100000);

CREATE INDEX ix_temp_index ON HR.TEMPLATE(ID);

EXECUTE staj_utility.INSERT_ROWS(100000);

DROP TABLE hr.template;

DROP INDEX ix_temp_index;
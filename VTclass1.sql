/*Create a DataBase*/
CREATE DATABASE VTCLASS1

/*Activate the DataBase*/
USE VTCLASS1

/*CREATE TABLE IN DATABASE*/

CREATE TABLE EMPLOYEE_DETAILS (EMPNAME CHAR(10),EMPAGE INT,EMPSALARY MONEY)

SELECT * FROM EMPLOYEE_DETAILS

SELECT EMPNAME,EMPAGE FROM EMPLOYEE_DETAILS

/*ALTER-CHANGE DATA TYPE*/
ALTER TABLE EMPLOYEE_DETAILS ALTER COLUMN EMPAGE TINYINT

/*alter-add NEW column*/
ALTER TABLE EMPLOYEE_DETAILS ADD GENDER CHAR(10)

/*ALTER-REMOVE COLUMN ALSO*/
ALTER TABLE EMPLOYEE_DETAILS DROP COLUMN EMPSALARY

/*SP_RENAME*/
SP_RENAME 'EMPLOYEE_DETAILS.EMPAGE','AGE'

/*INSERT*/
INSERT INTO EMPLOYEE_DETAILS VALUES ('JOHN',27,'MALE')
INSERT INTO EMPLOYEE_DETAILS VALUES ('PETER',23,'MALE')
INSERT INTO EMPLOYEE_DETAILS VALUES ('SAM',30,'MALE')
INSERT INTO EMPLOYEE_DETAILS VALUES ('HINA',26,'FEMALE')
INSERT INTO EMPLOYEE_DETAILS VALUES ('JOTI',21,'FEMALE')
INSERT INTO EMPLOYEE_DETAILS VALUES ('TOM',27,'MALE')

/*UPDATE*/
UPDATE EMPLOYEE_DETAILS SET AGE= 62 WHERE EMPNAME='TOM'
UPDATE EMPLOYEE_DETAILS SET EMPNAME= 'SURESH' WHERE EMPNAME='TOM'

/*DELETE->SINGLE ROW OR MULTIPLE ROW*/

DELETE EMPLOYEE_DETAILS WHERE EMPNAME= 'SURESH'

DELETE EMPLOYEE_DETAILS

/*TRUNCATE->REMOVE ALL ROWS FROM TABLE*/
TRUNCATE TABLE EMPLOYEE_DETAILS

/*DROP-> WILL DELETE TABLE/EXCEL SHEET FROM DATABASE*/
DROP TABLE EMPLOYEE_DETAILS

SELECT *FROM EMPLOYEE_DETAILS

INSERT INTO EMPLOYEE_DETAILS VALUES ('KOMAL',25,'FEMALE')
INSERT INTO EMPLOYEE_DETAILS VALUES ('JOTI',28,'')
INSERT INTO EMPLOYEE_DETAILS VALUES ('RAM',22,'MALE')
INSERT INTO EMPLOYEE_DETAILS VALUES (NULL,NULL,NULL)

UPDATE EMPLOYEE_DETAILS SET GENDER='FEMALE' WHERE EMPNAME='JOTI'

UPDATE 
       EMPLOYEE_DETAILS SET EMPNAME='UMA', AGE=27, GENDER='FEMALE'
       WHERE EMPNAME IS NULL AND AGE IS NULL AND GENDER IS NULL







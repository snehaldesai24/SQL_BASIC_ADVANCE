USE VTCLASS1

CREATE TABLE EMPLOYEE (EMPID INT, EMPNAME VARCHAR(10),EMPSALARY MONEY)

SELECT * FROM EMPLOYEE

/*ROW WISE RANKING*/

INSERT INTO EMPLOYEE VALUES(1,'SMITH',1200)
INSERT INTO EMPLOYEE VALUES(2,'JOHN',1500)
INSERT INTO EMPLOYEE VALUES(3,'RAM',1900)
INSERT INTO EMPLOYEE VALUES(4,'NEHA',1800)
INSERT INTO EMPLOYEE VALUES(5,'NIK',2200)
INSERT INTO EMPLOYEE VALUES(6,'SOHAM',1900)
INSERT INTO EMPLOYEE VALUES(7,'JOTI',3200)
INSERT INTO EMPLOYEE VALUES(8,'PRIYA',2200)
INSERT INTO EMPLOYEE VALUES(9,'DEVA',1800)
INSERT INTO EMPLOYEE VALUES(10,'SHAM',3000)

SELECT EMPID,EMPNAME,EMPSALARY, ROW_NUMBER() OVER(ORDER BY EMPSALARY ASC)AS RANK_VALUE FROM EMPLOYEE 

SELECT EMPID,EMPNAME,EMPSALARY, RANK() OVER(ORDER BY EMPSALARY ASC)AS RANK_VALUE FROM EMPLOYEE 

SELECT EMPID,EMPNAME,EMPSALARY, DENSE_RANK() OVER(ORDER BY EMPSALARY ASC)AS RANK_VALUE FROM EMPLOYEE 

SELECT EMPID,EMPNAME,EMPSALARY, DENSE_RANK() OVER(ORDER BY EMPSALARY DESC)AS RANK_VALUE FROM EMPLOYEE 

/*GROUP WISE RANKING*/
TRUNCATE TABLE EMPLOYEE

SELECT * FROM EMPLOYEE

INSERT INTO EMPLOYEE VALUES(1,'JOHN',1200)
INSERT INTO EMPLOYEE VALUES(1,'SMITH',1400)
INSERT INTO EMPLOYEE VALUES(1,'ROKY',1200)
INSERT INTO EMPLOYEE VALUES(1,'JAMES',1300)
INSERT INTO EMPLOYEE VALUES(1,'PRIYA',2000)

INSERT INTO EMPLOYEE VALUES(2,'NEHA',2200)
INSERT INTO EMPLOYEE VALUES(2,'DEEP',2400)
INSERT INTO EMPLOYEE VALUES(2,'RAM',2200)
INSERT INTO EMPLOYEE VALUES(2,'JOTI',2300)
INSERT INTO EMPLOYEE VALUES(2,'NIK',2000)
INSERT INTO EMPLOYEE VALUES(2,'SAM',2300)

SELECT EMPID,EMPNAME,EMPSALARY, ROW_NUMBER() OVER(PARTITION BY EMPID ORDER BY EMPSALARY ASC)AS RANK_VALUE FROM EMPLOYEE 

SELECT EMPID,EMPNAME,EMPSALARY, RANK() OVER(PARTITION BY EMPID ORDER BY EMPSALARY ASC)AS RANK_VALUE FROM EMPLOYEE 

SELECT EMPID,EMPNAME,EMPSALARY, DENSE_RANK() OVER(PARTITION BY EMPID ORDER BY EMPSALARY ASC)AS RANK_VALUE FROM EMPLOYEE 

SELECT EMPID,EMPNAME,EMPSALARY, DENSE_RANK() OVER(PARTITION BY EMPID ORDER BY EMPSALARY DESC)AS RANK_VALUE FROM EMPLOYEE 


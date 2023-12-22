create database EMPLOYEE
USE EMPLOYEE;
create table EMPLOYEE(ID INTEGER,NAME VARCHAR(20),SALARY INTEGER,MAILID VARCHAR(40))
INSERT INTO EMPLOYEE VALUES(1,'RAM',25000,'ram21@gmail.com');
INSERT INTO EMPLOYEE VALUES(2,'AJAY',35000,'ram21@gmail.com');
INSERT INTO EMPLOYEE VALUES(3,'VIJAY',65000,'ram21@gmail.com');
INSERT INTO EMPLOYEE VALUES(4,'MADHU',30000,'ram21@gmail.com');
INSERT INTO EMPLOYEE VALUES(6,'MADHU',45000,'ram21@gmail.com','M',CURRENT_TIMESTAMP);

INSERT INTO EMPLOYEE VALUES(5,'RAJ',45000,'ram21@gmail.com');

SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_type = 'BASE TABLE'
select * from EMPLOYEE;
update EMPLOYEE set MAILID='ajay34@gmail.com' where id=2

update EMPLOYEE set MAILID='vijay94@gmail.com' where id=3
update EMPLOYEE set MAILID='madhu21@gmail.com' where id=4

select * from EMPLOYEE
SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_type = 'BASE TABLE'
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='employee';

select distinct name from employee
select distinct salary from EMPLOYEE order by salary
ALTER  TABLE EMPLOYEE ADD doj date
ALTER TABLE EMPLOYEE ADD gender varchar(20)
DROP TABLE EMP
update EMPLOYEE set doj=CURRENT_TIMESTAMP where id=3
update EMPLOYEE set gender='male' 

delete employee 
select * from EMPLOYEE
drop view emp3

create view emp4 as select id,name,gender from EMPLOYEE where MAILID='ram21@gmail.com'
select * from emp4
drop view emp4
 


select * from emp4
delete EMPLOYEE where id=3
select * from employee where doj='2023-12-06' and mailid='ram21@gmail.com'
select * from employee where salary between 30000 and 50000
select * from employee where id in (2,4,5)
select * from employee where id=1 or salary=35000
select * from EMPLOYEE where name like 'A%'
select * from EMPLOYEE where name  not like '_u'
select * from employee where name not like 'r%'
select distinct id,salary,name from employee order by salary desc
select count(distinct name) from EMPLOYEE
create table details(city varchar(20),country varchar(20),id integer)
insert into details values('hyd','india',1)
insert into details values('bng','india',2)
insert into details values('cannada','US',3)
insert into details values('london','uk',4)
insert into details values('paris','france',5)
begin transaction


select * from details
begin tran
commit
select count(id),country from details group by country having count(id)<2
select count(id),city from details group by city having count(id)>1
select max(salary),name from employee group by name having max(salary)>40000
select min(salary),name from employee group by name having min(salary)<40000
begin tran
delete details where id=4
rollback
begin tran
save tran s1
delete details where id=2
save tran s2
insert into details values('mumbai','india',6)
save tran s3
update details set city='Nandyal' where id=4
rollback tran s1
rollback tran s2
rollback tran s3

create table demo1(id integer unique,name varchar(20))
insert into demo1 values(1,'abhi')
insert into demo1 values(2,'sasi')
insert into demo1 values(3,'janu')
select *from demo1
insert into demo1 values(1,'raj')

create table demo2(id integer not null,age integer)
insert into demo2 values(1,29)
insert into demo2 values(2,12)
insert into demo2 values(0,23)
select *from demo2
insert into demo2 values(null,34)

create table demo3(id integer,age integer check(age between 18 and 30))
insert into demo3 values(2,19)
insert into demo3 values(1,42) /*RETURNS ERROR*/
insert into demo3 values(1,29)
insert into demo3 values(3,30)
select *from demo3
DELETE DEMO3 WHERE ID=0

/*SET FUNCTIONS*/
select * from demo2 union select *from demo3
select * from demo2 intersect select *from demo3
select * from demo2 union all select *from demo3
select * from demo2 except select *from demo3
select * from demo3 except select *from demo2


/*SUB QUERY*/
INSERT INTO DEMO2 SELECT * FROM DEMO3
SELECT * FROM DEMO2


/*PRIMARY AND FORIEGN KEY*/
create table emp(id integer primary key, name varchar(20),age integer)
create table comp(email varchar(40),address varchar(20),id integer primary key  foreign key references emp1(id))
select * from comp


/*JOINS*/
select * from employee
select * from details
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE join details on employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE, details where employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE join details on employee.id<details.id
select * from employee
select * from details
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE join details on employee.id>details.id
select employee.id,employee.name,employee.mailid,employee.salary from EMPLOYEE inner join details on employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE left join details on employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE right join details on employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE full join details on employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE cross join details

/*STRING FUNCTIONS*/
select ascii('Z')                          /*returns ascii value of Z*/
select char(68)                            /* returns character of given ascii value*/
select len('Sravana Sandhya')              /* returns length of string */
select str(134.56,4,4)                     /* converts number into string syntax:STR(number, length, decimals)*/
SELECT lower ('JOHN' )                     /* converts into lower characters*/
SELECT REPLACE ('country','y', 'ies' )     /* replaces the 2nd argument with 3rd argument */
SELECT reverse ( 'PATH')                   /* returns reverse of a string*/
SELECT upper ( 'Peter')                    /*converts string into upper charcaters*/
SELECT str (134.56, 9, 5)                  

/*DATE FUNCTIONS*/
select getdate()
SELECT dateadd (mm, 2, '2010-02-03')
SELECT dateadd (dd, 4, '2010-02-03')
SELECT dateadd (yy, 6, '2010-02-03')
SELECT dateadd (hh, 5, '2010-02-03')
SELECT dateadd (ss, 3, '2010-02-03')
SELECT dateadd (MINUTE, 2, '2010-02-03')

SELECT datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))
SELECT datediff ( month, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))
SELECT datediff ( day, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))
SELECT datediff ( week, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))

SELECT datepart (mm, '2008-01-01')
SELECT datepart (yy, '2008-01-01')
SELECT day ( '2010-03-21')
SELECT month ('2007-04-03')
SELECT year ( '2011-04-17')

/*MATHEMATICAL FUNCTIONS*/
SELECT abs (-77)                             /*RETURNS ABSOLUTE VALUE*/
SELECT sin(1.5)                              /*RETURNS SINE VALUE IN RADIANS*/
SELECT ceiling (18.84)                       /*RETURNS NEAREST BIG NUMBER*/
SELECT exp (2.2)                             /*RETURNS EXPONENTIAL VALUE*/
SELECT floor (15.95)                         /*RETURNS NEAREST SMALL NUMBER*/
SELECT log (5.4)                             /*RETURNS LOGARITHMIC VALUE*/

/*RANK FUNCTIONS*/
select id,name,salary,row_number() over(order by salary) as rank from employee   /*GIVES CONSECUTIVE RANKS*/
select id,name,salary,rank() over(order by salary) as rank from employee         /*DUPLICATES HAVE THE SAME RANK AND JUMP ONE RANK FOR NEXT ONE*/
select id,name,salary,dense_rank() over(order by salary) as rank from employee   /*DUPLICATES HAVE SAME RANK*/
select id,name,salary,ntile(2) over(order by salary) as rank from employee       /*GIVES RANK BASED ON ARGUMENT GIVEN*/

/*AGGREGATE FUNCTIONS*/
select count(id) as no_of_emp from employee            /*GIVES TOTAL NO OF RECORDS IN THE COLUMN*/
select sum(salary) as tot_salary from employee         /*RETURNS SUM OF VALUES IN THE COLUMN*/
select avg(salary) as avg_salary from employee         /*RETURNS AVERAGE OF VALUES IN THE COLUMN*/
select min(salary) as min_salary from employee         /*RETURNS MINIMUM VALUES IN THE COLUMN*/
select max(salary) as max_salary from employee         /*RETURNS MAXIMUM VALUES IN THE COLUMN*/

/*HOST FUNCTIONS*/
select HOST_ID() as HostId             /*RETURNS HOST ID*/
select HOST_NAME() as HName            /*RETURNS HOST NAME*/
select SUSER_ID() as SI                /*RETURNS SERVER USER ID*/
select SUSER_NAME() as SN              /*RETURNS SERVER USER NAME*/
select USER_ID() as UId                /*RETURNS USER ID*/
select USER_NAME() as UN               /*RETURNS USER NAME*/
select DB_ID() as DBId                 /*RETURNS DABASE ID*/
select DB_NAME() as DBName             /*RETURNS DATABASE NAME*/


select max(salary),name from employee group by name having max(salary)>40000
select max(salary),name from employee group by name 
select max(salary),name from employee group by name having AVG(salary)=25000

/*EQUI AND NON-EQUI JOINS*/
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE join details on employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE, details where employee.id=details.id
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE join details on employee.id<details.id
select * from employee
select * from details
select employee.id,employee.name,employee.mailid,employee.salary,details.city,details.country from EMPLOYEE join details on employee.id>details.id
/*SUB-QUERIES*/
SELECT ID,NAME, SALARY FROM EMPLOYEE WHERE (SELECT AVG(ID) FROM DETAILS)<4
SELECT ID,NAME, SALARY FROM EMPLOYEE WHERE (SELECT AVG(ID) FROM DETAILS)>4
SELECT ID,NAME, SALARY FROM EMPLOYEE WHERE (SELECT COUNT(ID) FROM DETAILS)>=5
INSERT INTO DEMO2 SELECT * FROM DEMO3
SELECT * FROM DEMO2
DELETE DEMO2 WHERE ID IN (SELECT ID FROM DEMO3)

/*EXISTS--RETURNS TRUE OR FALSE*/
SELECT ID,NAME FROM EMPLOYEE WHERE EXISTS (SELECT * FROM DETAILS WHERE ID=2 AND COUNTRY='INDIA')
SELECT ID,NAME FROM EMPLOYEE WHERE EXISTS (SELECT * FROM DETAILS WHERE ID>2 AND COUNTRY='INDIA')
/*ANY*/
SELECT ID,NAME FROM EMPLOYEE WHERE ID=ANY (SELECT ID FROM DETAILS WHERE ID<4 AND COUNTRY='INDIA')
SELECT ID,NAME FROM EMPLOYEE WHERE ID=ANY (SELECT ID FROM DETAILS WHERE ID<=4)
/*ALL*/
SELECT ID,NAME FROM EMPLOYEE WHERE ID=ALL (SELECT ID FROM DETAILS WHERE ID<4 AND COUNTRY='INDIA')
SELECT ID,NAME FROM EMPLOYEE WHERE ID=ALL (SELECT ID FROM DETAILS WHERE ID=2 AND COUNTRY='INDIA')
SELECT ID,NAME FROM EMPLOYEE WHERE  ID=ALL (SELECT ID FROM DETAILS WHERE ID IN (1,3))
SELECT ID,NAME FROM EMPLOYEE WHERE  ID<=ALL (SELECT ID FROM DETAILS WHERE ID IN (3,5))
SELECT ALL NAME,ID FROM EMPLOYEE WHERE ID>3

SELECT ID,NAME,GENDER FROM EMPLOYEE WHERE ID=(SELECT ID FROM EMPLOYEE WHERE NAME='AJAY')

select *from demo4

/*AUTO INCREMENT*/
CREATE DATABASE example;
USE example;
DROP TABLE IF EXISTS customer;
CREATE TABLE customer ( id INTEGER PRIMARY KEY, postalCode VARCHAR(15) default NULL, ) CREATE SEQUENCE dc as int start with 1 increment by 1
DROP TABLE IF EXISTS product;
CREATE TABLE product ( id INT PRIMARY KEY, product_name VARCHAR(50) NOT NULL, price VARCHAR(7) NOT NULL, qty VARCHAR(4) NOT NULL )CREATE SEQUENCE ac as int start with 1 increment by 1
DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions ( id INT PRIMARY KEY, cust_id INT, timedate TIMESTAMP, FOREIGN KEY(cust_id)  REFERENCES customer(id), )CREATE SEQUENCE bc as int start with 1 increment by 1
CREATE TABLE product_transaction ( prod_id INT, trans_id INT, PRIMARY KEY(prod_id, trans_id), FOREIGN KEY(prod_id) REFERENCES product(id), FOREIGN KEY(trans_id) REFERENCES transactions(id))

/*STORED PROCEDURE*/
CREATE PROCEDURE emp_details AS
SELECT name,id,gender,salary 
FROM employee WHERE id in (1,3,5)

exec emp_details
DROP PROCEDURE EMPL
/*STORED PROCEDURE WITH VARIABLES*/
create procedure empl @id integer as 
select * from employee where id=@id
SELECT * FROM DETAILS WHERE ID=@ID

exec empl @id=4
exec empl @id=3


CREATE PROCEDURE DET @CITY VARCHAR(20),@ID INTEGER AS
SELECT * FROM DETAILS WHERE ID=@ID AND CITY=@CITY

EXEC DET @ID=3,@CITY=CANNADA
EXEC DET @ID=4,@CITY=CANNADA
CREATE PROCEDURE DATA @CITY VARCHAR(20),@ID INTEGER AS
SELECT * FROM DETAILS WHERE ID=@ID OR CITY=@CITY
EXEC DATA @ID=4,@CITY=CANNADA

CREATE TABLE
SalesList
(SalesMonth NVARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)
GO
INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170)
GO
/*ROLL UP*/
SELECT  * FROM SalesList
select sum(salestotAL) FROM SALESLIST
SELECT  SalesYear, SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY ROLLUP(SalesYear)
SELECT  SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes)
SELECT  SalesYear,SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes, SalesMonth)
/*GROUPING*/
SELECT SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal ,GROUPING(SalesQuartes) AS SalesQuarterGrp,GROUPING(SalesYear) AS SYearGrp FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes)
SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 
'Grand Total'
ELSE
CAST(SalesYear AS varchar(10))
END 
AS SalesYear,SalesQuartes,SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY ROLLUP(SalesYear,SalesQuartes)

SELECT SalesMonth,SalesTotal , ROW_NUMBER() OVER(ORDER BY NEWID()) AS RowNumber FROM SalesList

/*COMMON TABLE EXPRESSION*/
WITH CTE AS (
SELECT SalesMonth,SalesTotal , ROW_NUMBER() OVER(ORDER BY NEWID())AS RowNumber FROM SalesList ) 
SELECT RowNumber ,SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE GROUP BY ROLLUP(SalesMonth, RowNumber)

WITH CTE AS (
SELECT SalesMonth,SalesTotal , ROW_NUMBER() OVER(ORDER BY NEWID())AS RowNumber FROM SalesList )
SELECT  
CASE WHEN GROUPING(RowNumber) =1 THEN 'SubTotal'
ELSE SalesMonth
END AS SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber)

WITH CTE AS (
SELECT SalesMonth,SalesTotal , ROW_NUMBER() OVER(ORDER BY NEWID())AS RowNumber FROM SalesList ) 
SELECT  
CASE WHEN GROUPING(RowNumber) =1 THEN 'SubTotal'
ELSE SalesMonth
END AS SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber)
HAVING GROUPING(SalesMonth) = 0

/*GROUPING SET*/
SELECT NULL AS SalesQuarter, SalesMonth,
SUM(SalesTotal) AS SalesTotal 
FROM  SalesList
GROUP BY SalesMonth
UNION ALL
    SELECT  SalesQuartes, NULL AS SalesMonth,
SUM(SalesTotal) AS SalesTotal 
FROM  SalesList
GROUP BY SalesQuartes


SELECT  SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal FROM SalesList GROUP BY GROUPING SETS(SalesQuartes,SalesMonth)


SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 
'Grand Total'
ELSE
CAST(SalesYear AS varchar(10))
END 
AS SalesYear,
SalesQuartes,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY GROUPING SETS(SalesYear,(SalesYear,SalesQuartes),())



select * from employee
update employee set mailid=Null where id=6
update employee set mailid='nothing' where mailid is null
update employee set name=lower(name)
update employee set name=upper(name)

/*PARTITION BY*/
WITH cte AS (SELECT name,ROW_NUMBER() OVER (PARTITION BY mailid ORDER BY name ASC) AS rn FROM EMPLOYEE)
DELETE FROM cte WHERE rn > 1;

select name,datepart(dd,doj) from employee
select avg(salary) from employee where id=4 group by salary
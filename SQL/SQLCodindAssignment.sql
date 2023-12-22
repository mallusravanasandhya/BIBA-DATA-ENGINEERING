create database customer
use customer
Create table customer1(cid integer,cname varchar(20),phno varchar(20));
insert into customer1 values(101,'Manoj','9999988888');
Insert into customer1 values(102,'Hari','8888899999');
Insert into customer1 values(103,'Kedar','7777788888');
Create table order1(oid integer,price integer,oname varchar(20));
Insert into order1 values(101,230,'book');
Insert into order1 values(102,439,'bottle');
Insert into order1 values(104,290,'cap');
Insert into order1 values(105,550,'shoes');
/*joins*/
Select customer1.cid,customer1.cname,order1.price,order1.oname from customer1 inner join order1 on customer1.cid=order1.oid;
Select customer1.cid,customer1.cname,order1.price,order1.oname from customer1 left join order1 on customer1.cid=order1.oid;
Select customer1.cid,customer1.cname,order1.price,order1.oname from customer1 right join order1 on customer1.cid=order1.oid;
Select customer1.cid,customer1.cname,order1.price,order1.oname from customer1 cross join order1 

/*subqueries*/
Select cname,phno from customer1 where exists (select * from order1);
Select oid,oname from order1 where  (select count(cid) from customer1)>0;
select c.cid,c.cname from customer1 as c where cid=any(select oid from order1)
select o.oname,o.price from order1 as o where oid in (select a.oid from order1 as a)

Create table demo1(id integer,name varchar(20),city varchar(20),salary integer);
select * from demo1
Insert into demo1 values(1,'raj','delhi',20000);
Insert into demo1 values(2,'ram','mumbai',25000);
Insert into demo1 values(3,'uday','chennai',30000);
truncate table demo1
Update demo1 set salary=45000 where id=2
select salary from demo1 group by salary 
update demo1 set name='Deva' where salary=(select avg(salary) from demo1 group by salary having avg(salary)=45000)
update demo1 set city='Amaravthi' where id in (select sum(id) from demo1 group by id having sum(id)<2)



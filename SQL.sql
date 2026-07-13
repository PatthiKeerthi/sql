show databases;
-- how to create the database
create database dm;
-- how to delete the database
drop database dm;
create database employee;
drop database employee;
-- use or utilize the database
create database employee;
use employee;
-- how to create a Table
-- Student ID(varchar,int), Student Name(varchar), Student Marks(decimal,int)
create table Student(
Student_ID varchar(30),
Student_name varchar(40),
Student_marks int);
select * from Student;
-- how to delete the table
drop table Student;
create database employee;
delete from student;
use employee;

-- 09_06_2026
-- how many database is there how to check
show databases;
-- how to create a db
create database school;
-- how to delete the db
drop database school;

-- how to utilize the db
use school;
-- create one table 
-- the table name is course
-- c_id int ,c_name varchar(30)
create table course39(
c_id int not null,
c_name varchar(30));
insert into course39(c_id,c_name) values(0,'ak');
select * from course;
create table course3(
c_id int unique,
c_name varchar(30));
insert into course3(c_id,c_name) values(1,'ak'),(3,'aks');

-- primary key
-- unique +not null
create table course34(
c_id int primary key,
c_name varchar(30));
insert into course34(c_id,c_name) values(3,'ak'),(3,'aks');

-- check
create table course345(
c_id int primary key,
score int check(score>=60),
c_name varchar(30));
insert into course345(c_id,score,c_name) values(3,61,'ak');

create table course3456(
c_id int primary key auto_increment,
score int check(score>=60),
c_name varchar(30));
insert into course3456(score,c_name) values(61,'ak'),(93,'ad');
select * from course3456;

create table course34567(
c_id int primary key auto_increment,
score int check(score>=60),
c_name varchar(30))
auto_increment=5;
insert into course34567(score,c_name) values(35,'ak'),(93,'ad');
select * from course34567;
drop table course34567;

create table ticket1(
t_id int primary key auto_increment,
t_name varchar(30),
p_age int default 60,
booking_time datetime default current_timestamp);
insert into ticket1(t_name) values('gk'),
('ab'),
('ac');
select * from ticket1;

-- 10-06-2026
-- utilize the db
use school;
-- i want to create a table
-- table name is emplo
-- emp_id varchar
-- emp_name varchar
-- emp_des varchar
-- emp_age int
create table emplo9(
emp_id varchar(30),
emp_name varchar(30),
emp_des varchar(10),
emp_age int);
insert into emplo9(emp_id,emp_name,emp_des,emp_age) 
values('e101','ad','ds',27),
('e107','ak','da',20),
('e109','aks','bde',37),
('e106','ib','ae',24);
select*from emplo9;
update emplo set emp_des='hr' where emp_des='ae';
-- where emp_age is 27
-- u have to change 27 to 28
 update emplo set emp_age=28 where emp_age=27;
 -- we will modify emp_age,emp_name
 -- where emp_id='e106'
 update emplo set emp_age=39,emp_name='pk' where emp_id='e106';
 -- i want to delete the data where the emp_age=37
 delete from emplo where emp_age=37;
 -- i want to delete specific element hr
 update emplo set emp_des=null where emp_id='e106';
 -- delete pk where emp_id is e106
  update emplo set emp_name=null where emp_id='e106';
  alter table emplo add emp_exp int;
  -- add new column
  -- the col name is salary
  -- the datatype is decimal
    alter table emplo add emp_sal decimal(10,2);
    -- add emp_exp=2 where emp_id='e101'
    -- update
    update emplo set emp_exp=2 where emp_id='e101';
    alter table emplo drop column emp_salary;
    -- u want to drop emp_des, emp_age
      alter table emplo drop column emp_des, drop column emp_age;
      alter table emplo modify emp_name varchar(50);
      select*from emplo9;
      -- will change the datatype where the emp_age is int
      -- we want to change to decimal
       alter table emplo9 modify emp_age decimal(5,2);
       -- where emp_id try to change emp_id int
	alter table emplo9 modify emp_id int;
	alter table emplo9 rename column emp_age to employee_age;
    alter table emplo9 rename to emplo39;
    select*from emplo39;
    use school;
    truncate table emplo39;
    drop table emplo39;
    
-- 11-06-26
    select*from sales;
    -- orderdate, region , categoty
    select orderdate,region,category from sales;
    -- try to extract segment,subcategory,state,orderid
    select segment,subcategory,state,orderid from sales;
    select distinct(category) from sales;
    -- check how mny regions is there 
select distinct(region) from sales;
select distinct(subcategory) from sales;
select orderid as id from sales;
select orderdate as date from sales;
-- i want to extract the data regording the technology
select *from sales;
select * from sales where category= 'technology';
select orderid,sales,category from sales where category= 'technology';
-- fetch the region is east
select * from sales where region= 'east';
-- i want to extract the data where the quantity is greater than 5 
-- sales is less that 10 
select * from sales where quantity>5;
select * from sales where sales<10;
select * from sales where quantity>5 or sales<10;
-- try to extract the data where category = technology and city=texas
select * from sales where category='technology' and state='texas';
-- quantity> 2 
-- subcategory is art
-- sales >10
select * from sales where quantity>2 and subcategory='art' and sales>10;
select orderid,shipmode from sales where quantity>2 and subcategory='art' and sales>10;
-- i want to extract the information where region is east and west
select * from sales where region='east' or  region='west';
-- try to findout the data where the subcategory is art and paper
-- try to findout the data where the subcategory is paper,region is west as well as sales>3
select * from sales where subcategory='art' or subcategory='paper';
select * from sales where subcategory='paper' and region='west' and sales>3;
-- i dont want the inforamtion regarding technology
select*from sales where not category='technology';
select*from sales where not region='central';
select*from sales order by sales;
-- by default it takes ascending
select*from sales order by sales asc;
select*from sales order by quantity desc;
-- where category='technology' and sales in decs 
select*from sales where category='technology' order by sales desc;
select*from sales order by orderdate; 
-- str to date 
select*from sales order by str_to_date(orderdate,'%d-%m-%Y') asc;
select*from sales where category is not  null;
select*from sales where category='technology' order by sales desc limit 5;
select*from sales order by sales desc limit 5;
-- top 10 quantity record in desc order
select*from sales order by quantity desc limit 10;
-- first largest sales
-- limit
-- offset
select*from sales order by sales desc limit 1,1;
select*from sales order by sales desc limit 1;
select*from sales order by sales desc limit 2,1;
select*from sales order by sales desc limit 3,2;
select*from sales order by sales desc limit 1,5;
select*from sales order by sales desc limit 0;
select*from sales order by sales desc limit 1 offset 1; -- it like reverse process observe the difference
-- try to find the third largest quantity 
select*from sales order by quantity desc limit 2,1;
select*from sales order by quantity desc limit 1 offset 2;
-- the above 207 and 208 lines are same 
-- from  third largest we wnat the 2 values
select*from sales order by quantity desc limit 2,2;
select*from sales where region like 'w%';
select*from sales where category='%no%';

-- 15-06-2005
use school;
select*from sales;
/* try to ectract the data where
subcategory
paper,phones,art
*/
select*from sales where subcategory in ('paper','phones','art');
-- try to fingout the data 
-- where region is west and east
select*from sales where region in ('east','west');
-- try to findout the data 
-- where segment is consumer and corporate
select*from sales where segment in ('consumer','corporate');
select*from sales where segment in ("consumer","corporate");
select*from sales where segment in ("consumer",'corporate');
-- between 
-- quantity in between 3 to 5
select*from sales where quantity between 3 and 5;
select*from sales where quantity>=3 and quantity<=5;
select*from sales where category='technology' and sales between 10 and 30;
/* like
try to findout the data 
where the region is east
use like*/
select*from sales where region like'e%';
select*from sales where region like'e%t';
select*from sales where region like'%as%';
select*from sales where region like'e___';
select*from sales where region like'e__t';
select*from sales where region like'_as_';
/* try to findout the data 
where category is technology 
use like */
select*from sales where category like't%';
select*from sales where category like't%y';
select*from sales where category like'%y';
select*from sales where category like'%lo%';
select*from sales where category like't%y';

/* count
how many time the unique category is there*/ 
select count(distinct category) from sales;
-- how mant tims the unique subcategory is there
select count(distinct subcategory) from sales;
select sum(quantity) from sales;
-- try to count the  number where the region is west
select count(*) from sales where region like 'w%'; 
-- try to findout how many times texas is there
select count(*) from sales where state like 't%s'; 
-- sum
-- total sales
select sum(sales) from sales;
select round(sum(sales),3) from sales;
-- try to extract the total discount 
-- where subcategory is phones
select round(sum(discount),2) from sales where subcategory='phones';
-- try to findout the avg quantity 
-- where segment is corporate
select avg(quantity) from sales where segment='corporate';
-- try to findout the minimum profit 
-- where the art is there 
select min(profit) from sales where subcategory='art';
select min(profit) from sales where subcategory like 'a%t';
-- try to findout maximum discount 
-- where phones is there max
select max(discount) from sales where subcategory='phones';
/* group by
region east west central south
for each and every region we want 
total salesc
*/
select region,sum(sales) from sales group by region;
select region,sum(sales) as total_sales from sales group by region;
select region,round(sum(sales),2) as total_sales from sales group by region;
-- based on the category findout avg profit
select category,avg(profit)  from sales group by category;
-- avg(sales),min(discount),max(quantity) based on segment
select segment,avg(sales),min(discount),max(quantity) from sales group by segment;
-- try to findout sales based on region 
-- where the sales>20
select region,sum(sales) from sales group by region having sum(sales)>5000;

use school;

-- ******* here we can use another table names is cars *******
select* from cars;
-- find the avearage selling price 
select avg(price) group by brand;
select fuel,sum(price) from cars group by fuel;
select owner,count(*) as no_of_cars from cars group by owner;
select fuel,min(km_driven) from cars group by fuel;
select brand,max(sell_price) from cars
group by brand order by brand desc limit 1;
-- list brands whose
-- average selling price 
-- is greater that 500,000
select brand,avg(price)  as avg_sell from cars group by brand 
having avg_sell >500000;
-- try to findout fuel types that have more than 50 cars listed
select fuel,count(*) as no_of_cars 
from cars group by fuel having no_of_cars>60; 
alter  table cars rename column sell_price to price;
select sum(price)   from cars group by brand;
select price from cars;
select brand,avg(price) from cars group by brand;
select fuel,sum(price) from cars group by fuel;
select avg(price) from cars group by brand;


-- 16-06-2026
select owner,sum(price) as total_price from cars group by owner having total_price>1000000;
select brand,avg(km_driven) from cars group by brand;
select brand,count(*) as no_of_cars from cars group by brand having no_of_cars>2;
select*from g;
select*from users1; -- 1 2 3 4 8 11
select*from membership; 
select distinct(user_id) from membership; -- 1 2 3 4 5 6 
-- cross join 
select * from users1 t1 cross join g t2;
select * from g t1 cross join users1 t2;
select * from users1 t2 cross join g t1;
-- right join
select * from membership t1 right join users1 t2 on t1.user_id=t2.user_id;
select * from users1 t1 right join membership t2 on t1.user_id=t2.user_id;
select t2.user_id,
t1.membership_id,
t1.group_id,
t2.name,
t2.emergency_contact,
t2.age
from membership t1 right join users1 t2 
on t1.user_id=t2.user_id;

-- 1 2 
-- 3 2 
-- 4 2 times give me query
-- 1 2 3 4 8 11 give query
select  user_id,count(*) as frequency from users1 group by user_id;
select * from users1 t1 left join membership t2 on t1.user_id=t2.user_id;
select * from membership t1 left join users1 t2 on t1.user_id=t2.user_id;
select t1.user_id,
t1.membership_id,
t1.group_id,
t2.name,
t2.emergency_contact,
t2.age
from membership t1 left join users1 t2 
on t1.user_id=t2.user_id;

select t2.user_id,
t1.membership_id,
t1.group_id,
t2.name,
t2.emergency_contact,
t2.age
from membership t1 inner join users1 t2 
on t1.user_id=t2.user_id;

select t2.user_id,
t1.membership_id,
t1.group_id,
t2.name,
t2.emergency_contact,
t2.age
from membership t1 join users1 t2 
on t1.user_id=t2.user_id;
-- for full join we use this union
-- left join
-- union 
-- right join
select * from membership t1 left join users1 t2 on t1.user_id=t2.user_id
union 
select * from membership t1 right join users1 t2 on t1.user_id=t2.user_id;

select*from users1;
-- self join -- this will perform in the same table
select*from users1 t1 join users1 t2 on t1.user_id=t2.emergency_contact;

select*from flip_user; -- user_id name state city
select*from flip_order; -- order_id user_id order_date
select*from flip_order t1 join flip_user t2 on t1.user_id=t2.user_id;
select t2.order_id,
t1.name,
t1.city
from flip_user t1 join flip_order t2 
on t1.user_id=t2.user_id;
use school;
select t2.order_id,name,city from flip_user t1 join flip_order t2 
on t1.user_id=t2.user_id;


-- 17-06-2026
create table department1(
dept_id int primary key,
dept_location varchar(50),
dept_name varchar(50));
select*from department1;
create table emp(
emp_id int primary key,
emp_name varchar(50),
salary decimal(10,2),
dept_id int,
foreign key (dept_id) references department1(dept_id));
select*from emp;
insert into department1(dept_id,dept_name,dept_location) values
(1,'it','mumbai'),
(2,'hr','delhi'),
(3,'finance','bangalore'),
(4,'marketing','chennai'),
(5,'operation','pune');

insert into emp(emp_id,emp_name,salary,dept_id) values
(101,'amit',75000,1),
(102,'priya',55000,2),
(103,'rahul',65000,1),
(104,'sneha',45000,3),
(105,'ananya',70000,null);
-- retrive employee names along with their department names
select emp_name,dept_name from emp t1 join department1 t2 on t1.dept_id=t2.dept_id;
-- display all employess including those without a department
select emp_name,dept_name from emp t1 left join department1 t2 on t1.dept_id=t2.dept_id;
-- find employees not assigned to any department
select emp_name,emp_id from emp t1 left join department1 t2 on t1.dept_id=t2.dept_id where t2.dept_id is null;
-- find departments with no employees
select dept_name,emp_name  from emp t1 right join department1 t2 on t1.dept_id=t2.dept_id where t1.emp_id is null;
-- display employee names with department locations
 select emp_name,dept_location from emp t1 join department1 t2 on t1.dept_id=t2.dept_id;
 -- count number of employees in each department
 select dept_name,count(emp_name) as emp_count from emp t1 left join department1 t2 on t1.dept_id=t2.dept_id  group by emp_id;
 
select dept_name,count(emp_name) as total_emp from 
 emp t1 right join department1 t2 on t1.dept_id=t2.dept_id 
 group by t2.dept_name;
 
-- list employees working in IT department
select dept_name,emp_name  from emp t1 inner join department1 t2 on t1.dept_id=t2.dept_id where t2.dept_location='IT';
select dept_name,emp_name  from emp t1 right join department1 t2 on t1.dept_id=t2.dept_id where t2.dept_location='IT';
select dept_name,emp_name  from emp t1 left join department1 t2 on t1.dept_id=t2.dept_id where t2.dept_location='IT';
-- display all combinations of employees and department
select * from emp t1 cross join department1 t2;
-- retrieve salary greater than 60000 along with department names
select dept_name,salary from 
 emp t1 inner join department1 t2 on t1.dept_id=t2.dept_id 
 having salary>60000;
-- subquery
use school;
select * from sales where sales= (select 
min(sales) from sales);

select min(sales) from sales; 
select min(sales) from sales group by sales order by sales limit 1;

-- movies.csv in mysql workbench
-- 1.highest profit movies

select*from movies where gross-budget=(select max(gross-budget)from movies);
-- find how many movie rating 
-- greater than avg all movie rating 
 select count(*) from movies where score>(select avg(score) from movies);
 -- find highest rated movie on 1987
 select*from movies where year=1987 and score=(
 select max(score) from movies where year='1987');

use school;

create table course(
course_id int primary key,
course_name varchar(50),
duration varchar(20));

create table student(
stu_id int primary key,
name varchar(50),
age int,
course_id int,
foreign key(course_id) references course(course_id));
insert into course(course_id,course_name,duration) values
(101,'Math','3 months'),
(102,'Science','4 months'),
(103,'English','2 months'),
(104,'History','3 months');
insert into student(stu_id,name,age,course_id) values
(1,'Asha',20,101),
(2,'Ravi',22,102),
(3,'Priya',21,103),
(4,'Karan',23,101),
(5,'Neha',20,null);
-- list students enrolled in Math
select name,course_name  from course t1  join student t2 on t1.course_id=t2.course_id where t1.course_name='Math';
-- find courses with more than one student
select course_name,count(name) as count_student from course t1  join student t2 on t1.course_id=t2.course_id 
group by course_name having count_student>1;
-- or
select count(*) as total_student,course_name from course t1  join student t2 on t1.course_id=t2.course_id 
group by course_name having total_student>1;
-- count courses per student
select name,count(course_name) from course t1  right join student t2 on t1.course_id=t2.course_id group by name;





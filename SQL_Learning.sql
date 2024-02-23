create database school ;

use school;

create table student(
id int primary key,
name varchar(50),
age int not null
);

insert into student values(1,"Ram",26);
insert into student values(2,"Tushar",24);

select * from student;

create database xyz_company;
use xyz_company;

create table employee(
id int primary key,
name varchar(100),
salary int
);

insert into employee
(id,name,salary)
values
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

select * from employee;











 

#MySQL Queries
A list of commonly used MySQL queries to create database, use database, 
create table, insert record, update record, delete record, select record, 
truncate table and drop table are given below.
==============================================================================================
1) MySQL Create Database
MySQL create database is used to create database.
 
mysql> create database db1;
Query OK, 1 row affected (0.01 sec)
----------------------------------------------------------------------------------------------
2) MySQL Select/Use Database
MySQL use database is used to select database.
 
mysql> use db1;
Database changed
----------------------------------------------------------------------------------------------
3) MySQL Create Query
MySQL create query is used to create a table, view, procedure and function.
 
mysql> CREATE TABLE customers
    -> (id int(10),
    ->  name varchar(50),
    ->  city varchar(50),
    ->  PRIMARY KEY (id )
    -> );
Query OK, 0 rows affected, 1 warning (0.02 sec)
 ---------------------------------------------------------------------------------------------
4) MySQL Alter Query
MySQL alter query is used to add, modify, delete or drop colums of a table.
 
mysql> ALTER TABLE customers
    -> ADD age varchar(50);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
----------------------------------------------------------------------------------------------
5) MySQL Insert Query
MySQL insert query is used to insert records into table.
 
mysql> insert into customers values(101,'rahul','delhi',1);
Query OK, 1 row affected (0.00 sec)
----------------------------------------------------------------------------------------------
mysql> select * from customers ;
+-----+-------+-------+------+
| id  | name  | city  | age  |
+-----+-------+-------+------+
| 101 | rahul | delhi | 1    |
+-----+-------+-------+------+
1 row in set (0.00 sec)
---------------------------------------------------------------------------------------------
6) MySQL Update Query
MySQL update query is used to update records of a table. 
 
mysql> update customers set age=25, city='london' where id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
----------------------------------------------------------------------------------------------
mysql> select * from customers ;
+-----+-------+--------+------+
| id  | name  | city   | age  |
+-----+-------+--------+------+
| 101 | rahul | london | 25   |
+-----+-------+--------+------+
1 row in set (0.00 sec)
----------------------------------------------------------------------------------------------
mysql> insert into customers values(102,'Mahul','Pune',23);
Query OK, 1 row affected (0.01 sec)
 
mysql> select * from customers ;
+-----+-------+--------+------+
| id  | name  | city   | age  |
+-----+-------+--------+------+
| 101 | rahul | london | 25   |
| 102 | Mahul | Pune   | 23   |
+-----+-------+--------+------+
2 rows in set (0.00 sec)
----------------------------------------------------------------------------------------------
7) MySQL Delete Query
MySQL update query is used to delete records of a table from database.
 
mysql> delete from customers where id=101;
Query OK, 1 row affected (0.01 sec)

mysql> select * from customers ;
+-----+-------+------+------+
| id  | name  | city | age  |
+-----+-------+------+------+
| 102 | Mahul | Pune | 23   |
+-----+-------+------+------+
1 row in set (0.00 sec)

------------------------------------------------------------------------------------------------
8) MySQL Truncate Table Query
MySQL update query is used to truncate or remove records of a table. 

mysql> truncate table customers;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from customers ;
Empty set (0.00 sec)
------------------------------------------------------------------------------------------------
10) MySQL Drop Query
MySQL drop query is used to drop a table, view or database. 
It removes structure and data of a table if you drop table.

mysql> drop table customers;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from customers ;
/* ERROR 1146 (42S02): Table 'db1.customers' doesn't exist*/
-------------------------------------------------------------------------------------------------
//New Database is created 
 
mysql> create database college;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| db1                |
| information_schema |
| mysql              |
| performance_schema |
| sra                |
| user_data          |
+--------------------+
7 rows in set (0.00 sec)
mysql> use college;
Database changed
 
mysql> create table student(
    -> rollno int primary key,
    -> name varchar(50)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> select * from student;
Empty set (0.00 sec)

// Value is inserted into student table
mysql> insert into student(
    -> rollno,name)
    -> values
    -> (101,"karan"),
    -> (102,"Arjun"),
    -> (103,"Ram");
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from student;
+--------+-------+
| rollno | name  |
+--------+-------+
|    101 | karan |
|    102 | Arjun |
|    103 | Ram   |
+--------+-------+
3 rows in set (0.00 sec)
================================================================================================================================================================
//New Database is created 

mysql> create database xyz_company;
Query OK, 1 row affected (0.01 sec)

mysql> use xyz_company;
Database changed
mysql> create table employee(
    -> id int primary key,
    -> name varchar(100),
    -> salary int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee
    -> (id , name , salary)
    -> values
    -> (1,"Adam",25000),
    -> (2,"Bob",30000),
    -> (3,"Casey",40000);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+----+-------+--------+
| id | name  | salary |
+----+-------+--------+
|  1 | Adam  |  25000 |
|  2 | Bob   |  30000 |
|  3 | Casey |  40000 |
+----+-------+--------+
3 rows in set (0.00 sec) 
==================================================================================================================================================================
// Constraints:- It is used to specify rules for data in table 

mysql> create table emp(
    -> id int,
    -> salary int default 26000);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into emp(id) values (101);
Query OK, 1 row affected (0.01 sec)

===================================================================================================================================================================
//New Database is created 

mysql> create database college;
Query OK, 1 row affected (0.01 sec)

mysql> use college;
Database changed
mysql> create table student(
    -> rollno int primary key,
    -> name varchar(50),
    -> marks int not null,
    -> grade varchar(1),
    -> city varchar(20)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| student           |
+-------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO student (rollno, name, marks, grade, city)
    -> VALUES
    ->     (101, "Ramu", 77, "C", "Mumbai"),
    ->     (102, "Tush", 88, "A", "Padali"),
    ->     (103, "Nachi", 89, "A", "Pune"),
    ->     (104, "Piyush", 88, "A", "Malegaon"),
    ->     (105, "RK", 82, "B", "Shrigonda"),
    ->     (106, "Sushant", 81, "B", "Satana");
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from student;
+--------+---------+-------+-------+-----------+
| rollno | name    | marks | grade | city      |
+--------+---------+-------+-------+-----------+
|    101 | Ramu    |    77 | C     | Mumbai    |
|    102 | Tush    |    88 | A     | Padali    |
|    103 | Nachi   |    89 | A     | Pune      |
|    104 | Piyush  |    88 | A     | Malegaon  |
|    105 | RK      |    82 | B     | Shrigonda |
|    106 | Sushant |    81 | B     | Satana    |
+--------+---------+-------+-------+-----------+
6 rows in set (0.00 sec)
===========================================================================================================================================================
mysql> select city from student;
+-----------+
| city      |
+-----------+
| Mumbai    |
| Padali    |
| Pune      |
| Malegaon  |
| Shrigonda |
| Satana    |
+-----------+
6 rows in set (0.00 sec)

====Distinct word -> For unique words

mysql> select Distinct city from student;
+-----------+
| city      |
+-----------+
| Mumbai    |
| Padali    |
| Pune      |
| Malegaon  |
| Shrigonda |
| Satana    |
+-----------+
6 rows in set (0.00 sec)

===== Where clause -> Define some condition 

mysql> select * from student where marks > 80;
+--------+---------+-------+-------+-----------+
| rollno | name    | marks | grade | city      |
+--------+---------+-------+-------+-----------+
|    102 | Tush    |    88 | A     | Padali    |
|    103 | Nachi   |    89 | A     | Pune      |
|    104 | Piyush  |    88 | A     | Malegaon  |
|    105 | RK      |    82 | B     | Shrigonda |
|    106 | Sushant |    81 | B     | Satana    |
+--------+---------+-------+-------+-----------+
5 rows in set (0.00 sec)

mysql> select * from student where city = " Mumbai ";
Empty set (0.00 sec)

mysql> select * from student where city = "Padali";
+--------+------+-------+-------+--------+
| rollno | name | marks | grade | city   |
+--------+------+-------+-------+--------+
|    102 | Tush |    88 | A     | Padali |
+--------+------+-------+-------+--------+
1 row in set (0.00 sec)

mysql> select * from student where marks+10 > 100;
Empty set (0.00 sec)

mysql> select * from student where marks+20 > 100;
+--------+---------+-------+-------+-----------+
| rollno | name    | marks | grade | city      |
+--------+---------+-------+-------+-----------+
|    102 | Tush    |    88 | A     | Padali    |
|    103 | Nachi   |    89 | A     | Pune      |
|    104 | Piyush  |    88 | A     | Malegaon  |
|    105 | RK      |    82 | B     | Shrigonda |
|    106 | Sushant |    81 | B     | Satana    |
+--------+---------+-------+-------+-----------+
5 rows in set (0.00 sec)

// AND , OR Operator 
mysql> select * from student where marks > 80 and city = "Pune";
+--------+-------+-------+-------+------+
| rollno | name  | marks | grade | city |
+--------+-------+-------+-------+------+
|    103 | Nachi |    89 | A     | Pune |
+--------+-------+-------+-------+------+
1 row in set (0.00 sec)

mysql> select * from student where marks > 80 OR city  = "Satana";
+--------+---------+-------+-------+-----------+
| rollno | name    | marks | grade | city      |
+--------+---------+-------+-------+-----------+
|    102 | Tush    |    88 | A     | Padali    |
|    103 | Nachi   |    89 | A     | Pune      |
|    104 | Piyush  |    88 | A     | Malegaon  |
|    105 | RK      |    82 | B     | Shrigonda |
|    106 | Sushant |    81 | B     | Satana    |
+--------+---------+-------+-------+-----------+
5 rows in set (0.00 sec)
mysql> select * from student where city not in ("Pune","Satana");
+--------+--------+-------+-------+-----------+
| rollno | name   | marks | grade | city      |
+--------+--------+-------+-------+-----------+
|    101 | Ramu   |    77 | C     | Mumbai    |
|    102 | Tush   |    88 | A     | Padali    |
|    104 | Piyush |    88 | A     | Malegaon  |
|    105 | RK     |    82 | B     | Shrigonda |
+--------+--------+-------+-------+-----------+
4 rows in set (0.00 sec)

=======================================================================================================================================
//Limit clause 
mysql> select * from student limit 3;
+--------+-------+-------+-------+--------+
| rollno | name  | marks | grade | city   |
+--------+-------+-------+-------+--------+
|    101 | Ramu  |    77 | C     | Mumbai |
|    102 | Tush  |    88 | A     | Padali |
|    103 | Nachi |    89 | A     | Pune   |
+--------+-------+-------+-------+--------+
3 rows in set (0.00 sec)

mysql> select * from student where marks > 75 limit 3;
+--------+-------+-------+-------+--------+
| rollno | name  | marks | grade | city   |
+--------+-------+-------+-------+--------+
|    101 | Ramu  |    77 | C     | Mumbai |
|    102 | Tush  |    88 | A     | Padali |
|    103 | Nachi |    89 | A     | Pune   |
+--------+-------+-------+-------+--------+
3 rows in set (0.00 sec)

mysql> select * from student where marks < 75 limit 3;
Empty set (0.00 sec)

mysql> select * from student order by city asc;
+--------+---------+-------+-------+-----------+
| rollno | name    | marks | grade | city      |
+--------+---------+-------+-------+-----------+
|    104 | Piyush  |    88 | A     | Malegaon  |
|    101 | Ramu    |    77 | C     | Mumbai    |
|    102 | Tush    |    88 | A     | Padali    |
|    103 | Nachi   |    89 | A     | Pune      |
|    106 | Sushant |    81 | B     | Satana    |
|    105 | RK      |    82 | B     | Shrigonda |
+--------+---------+-------+-------+-----------+
6 rows in set (0.00 sec)

mysql> select * from student order by marks asc;
+--------+---------+-------+-------+-----------+
| rollno | name    | marks | grade | city      |
+--------+---------+-------+-------+-----------+
|    101 | Ramu    |    77 | C     | Mumbai    |
|    106 | Sushant |    81 | B     | Satana    |
|    105 | RK      |    82 | B     | Shrigonda |
|    102 | Tush    |    88 | A     | Padali    |
|    104 | Piyush  |    88 | A     | Malegaon  |
|    103 | Nachi   |    89 | A     | Pune      |
+--------+---------+-------+-------+-----------+
6 rows in set (0.00 sec)
===========================================================================================================================================

//Aggregate function 

mysql> select max(marks) from student;
+------------+
| max(marks) |
+------------+
|         89 |
+------------+
1 row in set (0.00 sec)

mysql> select avg(marks)from student ;
+------------+
| avg(marks) |
+------------+
|    84.1667 |
+------------+
1 row in set (0.00 sec)

mysql> select count(name) from student;
+-------------+
| count(name) |
+-------------+
|           6 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(marks) from student;
+------------+
| sum(marks) |
+------------+
|        505 |
+------------+
1 row in set (0.00 sec)

//Group by clause
mysql> select city from student group by city;
+-----------+
| city      |
+-----------+
| Mumbai    |
| Padali    |
| Pune      |
| Malegaon  |
| Shrigonda |
| Satana    |
+-----------+
6 rows in set (0.00 sec)





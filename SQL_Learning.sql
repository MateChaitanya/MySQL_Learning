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
======================================================================================================================
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
6 rows in set (0.00 sec

mysql> select city , count(rollno) from student ;
+--------+---------------+
| city   | count(rollno) |
+--------+---------------+
| Mumbai |             6 |
+--------+---------------+
1 row in set (0.00 sec)

mysql> select city , count(rollno) from student group by city;
+-----------+---------------+
| city      | count(rollno) |
+-----------+---------------+
| Mumbai    |             1 |
| Padali    |             1 |
| Pune      |             1 |
| Malegaon  |             1 |
| Shrigonda |             1 |
| Satana    |             1 |
+-----------+---------------+
6 rows in set (0.00 sec)

mysql> select city , avg(marks) from student group by city order by city ;
+-----------+------------+
| city      | avg(marks) |
+-----------+------------+
| Malegaon  |    88.0000 |
| Mumbai    |    77.0000 |
| Padali    |    88.0000 |
| Pune      |    89.0000 |
| Satana    |    81.0000 |
| Shrigonda |    82.0000 |
+-----------+------------+
6 rows in set (0.01 sec)

mysql> select city , avg(marks) from student group by city order by marks ;
+-----------+------------+
| city      | avg(marks) |
+-----------+------------+
| Mumbai    |    77.0000 |
| Satana    |    81.0000 |
| Shrigonda |    82.0000 |
| Padali    |    88.0000 |
| Malegaon  |    88.0000 |
| Pune      |    89.0000 |
+-----------+------------+
6 rows in set (0.00 sec)

mysql> select grade from student group byy grade;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'byy grade' at line 1
mysql> select grade from student group by grade;
+-------+
| grade |
+-------+
| C     |
| A     |
| B     |
+-------+
3 rows in set (0.00 sec)

mysql> select grade from student group by grade order by grade;
+-------+
| grade |
+-------+
| A     |
| B     |
| C     |
+-------+
3 rows in set (0.00 sec)

mysql> select grade,count(rollno) from student group by grade order by grade;
+-------+---------------+
| grade | count(rollno) |
+-------+---------------+
| A     |             3 |
| B     |             2 |
| C     |             1 |
+-------+---------------+
3 rows in set (0.00 sec)

mysql> select count(name),city from student group by city having max(marks) > 90;
Empty set (0.01 sec)

mysql> select count(name),city from student group by city having max(marks) > 80;
+-------------+-----------+
| count(name) | city      |
+-------------+-----------+
|           1 | Padali    |
|           1 | Pune      |
|           1 | Malegaon  |
|           1 | Shrigonda |
|           1 | Satana    |
+-------------+-----------+
5 rows in set (0.00 sec)

mysql> update student set grade ="0"
    -> where grade = "A";
Query OK, 3 rows affected (0.03 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from student ;
+--------+---------+-------+-------+-----------+
| rollno | name    | marks | grade | city      |
+--------+---------+-------+-------+-----------+
|    101 | Ramu    |    77 | C     | Mumbai    |
|    102 | Tush    |    88 | 0     | Padali    |
|    103 | Nachi   |    89 | 0     | Pune      |
|    104 | Piyush  |    88 | 0     | Malegaon  |
|    105 | RK      |    82 | B     | Shrigonda |
|    106 | Sushant |    81 | B     | Satana    |
+--------+---------+-------+-------+-----------+
6 rows in set (0.00 sec)

mysql> update student set grade ="A"
    -> where marks between 85 and 90;
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from student ;
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

mysql> create table dept(
    -> id int primary key,
    -> name varchar(50)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| dept              |
| student           |
+-------------------+
2 rows in set (0.00 sec)

mysql> create table teacher (
    -> id int primary key,
    -> name varchar(60),
    -> dept_id int,
    -> foreign key (dept_id) references dept(id)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| dept              |
| student           |
| teacher           |
+-------------------+
3 rows in set (0.00 sec)

=====================================================================================================================
//Cascading for foreign key

mysql> drop table teacher;
Query OK, 0 rows affected (0.02 sec)
 
mysql> create table teacher (
    ->     id int primary key,
    ->     name varchar(60),
    ->     dept_id int,
    ->     foreign key (dept_id) references dept(id)
    ->     on update cascade
    ->     on delete cascade
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| dept              |
| student           |
| teacher           |
+-------------------+
3 rows in set (0.00 sec)

mysql> insert into dept
    -> values
    -> (101,"English"),
    -> (102,"IT");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from dept;
+-----+---------+
| id  | name    |
+-----+---------+
| 101 | English |
| 102 | IT      |
+-----+---------+
2 rows in set (0.00 sec)

mysql> insert into teacher
    -> values
    -> (101,"Adam",101),
    -> (102,"Eve",102);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from teacher;
+-----+------+---------+
| id  | name | dept_id |
+-----+------+---------+
| 101 | Adam |     101 |
| 102 | Eve  |     102 |
+-----+------+---------+
2 rows in set (0.00 sec)

mysql> update dept
    -> set id =103
    -> where id = 102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from dept;
+-----+---------+
| id  | name    |
+-----+---------+
| 101 | English |
| 103 | IT      |
+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from teacher;
+-----+------+---------+
| id  | name | dept_id |
+-----+------+---------+
| 101 | Adam |     101 |
| 102 | Eve  |     103 |
+-----+------+---------+
2 rows in set (0.00 sec)

mysql> update dept
    -> set id =103
    -> where id = 102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from dept;
+-----+---------+
| id  | name    |
+-----+---------+
| 101 | English |
| 103 | IT      |
+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from teacher;
+-----+------+---------+
| id  | name | dept_id |
+-----+------+---------+
| 101 | Adam |     101 |
| 102 | Eve  |     103 |
+-----+------+---------+
2 rows in set (0.00 sec)

==================================================================================================================================

mysql> alter table student
    -> add column age int;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student ;
+--------+---------+-------+-------+-----------+------+
| rollno | name    | marks | grade | city      | age  |
+--------+---------+-------+-------+-----------+------+
|    101 | Ramu    |    77 | C     | Mumbai    | NULL |
|    102 | Tush    |    88 | A     | Padali    | NULL |
|    103 | Nachi   |    89 | A     | Pune      | NULL |
|    104 | Piyush  |    88 | A     | Malegaon  | NULL |
|    105 | RK      |    82 | B     | Shrigonda | NULL |
|    106 | Sushant |    81 | B     | Satana    | NULL |
+--------+---------+-------+-------+-----------+------+
6 rows in set (0.00 sec)
 
mysql> alter table student
    -> drop column age ;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student ;
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

mysql> alter table student
    -> add column age int not null default 19 ;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student ;
+--------+---------+-------+-------+-----------+-----+
| rollno | name    | marks | grade | city      | age |
+--------+---------+-------+-------+-----------+-----+
|    101 | Ramu    |    77 | C     | Mumbai    |  19 |
|    102 | Tush    |    88 | A     | Padali    |  19 |
|    103 | Nachi   |    89 | A     | Pune      |  19 |
|    104 | Piyush  |    88 | A     | Malegaon  |  19 |
|    105 | RK      |    82 | B     | Shrigonda |  19 |
|    106 | Sushant |    81 | B     | Satana    |  19 |
+--------+---------+-------+-------+-----------+-----+
6 rows in set (0.00 sec)

mysql> alter table student
    -> modify column age varchar(2);
Query OK, 6 rows affected (0.05 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from student ;
+--------+---------+-------+-------+-----------+------+
| rollno | name    | marks | grade | city      | age  |
+--------+---------+-------+-------+-----------+------+
|    101 | Ramu    |    77 | C     | Mumbai    | 19   |
|    102 | Tush    |    88 | A     | Padali    | 19   |
|    103 | Nachi   |    89 | A     | Pune      | 19   |
|    104 | Piyush  |    88 | A     | Malegaon  | 19   |
|    105 | RK      |    82 | B     | Shrigonda | 19   |
|    106 | Sushant |    81 | B     | Satana    | 19   |
+--------+---------+-------+-------+-----------+------+
6 rows in set (0.00 sec)

mysql> alter table student
    -> change age stu_age int ;
Query OK, 6 rows affected (0.04 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from student ;
+--------+---------+-------+-------+-----------+---------+
| rollno | name    | marks | grade | city      | stu_age |
+--------+---------+-------+-------+-----------+---------+
|    101 | Ramu    |    77 | C     | Mumbai    |      19 |
|    102 | Tush    |    88 | A     | Padali    |      19 |
|    103 | Nachi   |    89 | A     | Pune      |      19 |
|    104 | Piyush  |    88 | A     | Malegaon  |      19 |
|    105 | RK      |    82 | B     | Shrigonda |      19 |
|    106 | Sushant |    81 | B     | Satana    |      19 |
+--------+---------+-------+-------+-----------+---------+
6 rows in set (0.00 sec)

mysql> insert into student
    -> (rollno , name , marks , stu_age)
    -> values
    -> (107,"Swaraj",68,100);
Query OK, 1 row affected (0.01 sec)

mysql> select * from student ;
+--------+---------+-------+-------+-----------+---------+
| rollno | name    | marks | grade | city      | stu_age |
+--------+---------+-------+-------+-----------+---------+
|    101 | Ramu    |    77 | C     | Mumbai    |      19 |
|    102 | Tush    |    88 | A     | Padali    |      19 |
|    103 | Nachi   |    89 | A     | Pune      |      19 |
|    104 | Piyush  |    88 | A     | Malegaon  |      19 |
|    105 | RK      |    82 | B     | Shrigonda |      19 |
|    106 | Sushant |    81 | B     | Satana    |      19 |
|    107 | Swaraj  |    68 | NULL  | NULL      |     100 |
+--------+---------+-------+-------+-----------+---------+
7 rows in set (0.00 sec)

============================================================================================================================
// Joins in sql 

mysql>  show  tables;
+-------------------+
| Tables_in_college |
+-------------------+
| dept              |
| student           |
| teacher           |
+-------------------+
3 rows in set (0.03 sec)

mysql> create table studentt(
    -> id int primary key,
    -> name varchar(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> insert into studentt ( id , name )
    -> values
    -> (101,"Adam"),
    -> (102,"bob"),
    -> (103,"Casey");
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> create table course (
    -> id int primary key,
    -> course varchar(80)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into course ( id , course )
    -> values
    -> (102,"English"),
    -> (103,"Math"),
    -> (104,"Science"),
    -> (107,"Computer Science ");
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from studentt;
+-----+-------+
| id  | name  |
+-----+-------+
| 101 | Adam  |
| 102 | bob   |
| 103 | Casey |
+-----+-------+
3 rows in set (0.00 sec)

mysql> select * from course;
+-----+-------------------+
| id  | course            |
+-----+-------------------+
| 102 | English           |
| 103 | Math              |
| 104 | Science           |
| 107 | Computer Science  |
+-----+-------------------+
4 rows in set (0.00 sec)

//Inner Join 

mysql> select * from studentt inner join course
    -> on studentt.id = course.id;
+-----+-------+-----+---------+
| id  | name  | id  | course  |
+-----+-------+-----+---------+
| 102 | bob   | 102 | English |
| 103 | Casey | 103 | Math    |
+-----+-------+-----+---------+
2 rows in set (0.00 sec) 




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

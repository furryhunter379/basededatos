alumno@ipm-13:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.23-0ubuntu0.20.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database personas;
ERROR 1007 (HY000): Can't create database 'personas'; database exists
mysql> use personas;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> drop database personas;
Query OK, 1 row affected (0.04 sec)

mysql> create database personas;
Query OK, 1 row affected (0.01 sec)

mysql> use personas;
Database changed
mysql> create table alumnos (nombre VARCHAR(50), edad INT);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into alumnos (nombre,edad) values ("equis",12)
    -> ;
Query OK, 1 row affected (0.01 sec)

mysql> insert into alumnos (nombre,edad) values ("gru",59);
Query OK, 1 row affected (0.01 sec)

mysql> insert into alumnos (nombre,edad) values ("matafeministasinvicto",110);
Query OK, 1 row affected (0.01 sec)

mysql> insert into alumnos (nombre,edad) values ("raul kun",20);
Query OK, 1 row affected (0.01 sec)

mysql> insert into alumnos (nombre,edad) values ("mai",23);
Query OK, 1 row affected (0.00 sec)

mysql> select edad from alumno
    -> ;
ERROR 1146 (42S02): Table 'personas.alumno' doesn't exist
mysql> SELECT edad FROM alumno;
ERROR 1146 (42S02): Table 'personas.alumno' doesn't exist
mysql> SELECT nombre FROM alumnos
    -> ;
+-----------------------+
| nombre                |
+-----------------------+
| equis                 |
| gru                   |
| matafeministasinvicto |
| raul kun              |
| mai                   |
+-----------------------+
5 rows in set (0.00 sec)

mysql> SELECT edad FROM alumnos
    -> ;
+------+
| edad |
+------+
|   12 |
|   59 |
|  110 |
|   20 |
|   23 |
+------+
5 rows in set (0.01 sec)

mysql> SELECT * FROM alumnos
    -> ;
+-----------------------+------+
| nombre                | edad |
+-----------------------+------+
| equis                 |   12 |
| gru                   |   59 |
| matafeministasinvicto |  110 |
| raul kun              |   20 |
| mai                   |   23 |
+-----------------------+------+
5 rows in set (0.00 sec)

mysql> describe alumnos
    -> ;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| nombre | varchar(50) | YES  |     | NULL    |       |
| edad   | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> delete from alumnos where nombre = "mai";
Query OK, 1 row affected (0.01 sec)

mysql> SELECT nombre FROM alumnos
    -> ;
+-----------------------+
| nombre                |
+-----------------------+
| equis                 |
| gru                   |
| matafeministasinvicto |
| raul kun              |
+-----------------------+
4 rows in set (0.00 sec)

mysql> 

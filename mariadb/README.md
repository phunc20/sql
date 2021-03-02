### Some Common Commands and Good Practices
- show/list all databases: `SHOW DATABASES;`
  ```mysql
  MariaDB [(none)]> SHOW DATABASES;
  +--------------------+
  | Database           |
  +--------------------+
  | gfg                |
  | information_schema |
  | test               |
  +--------------------+
  3 rows in set (0.001 sec)
  ```
- change to an existing database: `USE <db_name>`
  ```mysql
  MariaDB [(none)]> show databases;
  +--------------------+
  | Database           |
  +--------------------+
  | gfg                |
  | information_schema |
  | test               |
  +--------------------+
  3 rows in set (0.001 sec)
  
  MariaDB [(none)]> USE gfg
  Reading table information for completion of table and column
   names
  You can turn off this feature to get a quicker startup with
  -A
  
  Database changed
  MariaDB [gfg]>
  ```
- show all tables (in current database): `SHOW TABLES;`
  ```mysql
  # If there is no table.
  MariaDB [gfg]> SHOW TABLES;
  Empty set (0.001 sec)

  # If there are tables
  MariaDB [gfg]> SHOW TABLES;
  +---------------+
  | Tables_in_gfg |
  +---------------+
  | Scores        |
  | animal        |
  +---------------+
  2 rows in set (0.001 sec)
  ```
- show data type, indexes, etc. of a table: `DESCRIBE <table_name>`
  ```mysql
  MariaDB [gfg]> DESCRIBE Scores;
  +-------+--------------+------+-----+---------+-------+
  | Field | Type         | Null | Key | Default | Extra |
  +-------+--------------+------+-----+---------+-------+
  | Id    | int(11)      | YES  |     | NULL    |       |
  | Score | decimal(3,2) | YES  |     | NULL    |       |
  +-------+--------------+------+-----+---------+-------+
  2 rows in set (0.002 sec)

  ```
- execute SQL commands collected in a file: `source <filename>` or equivalently `\. <filename>`
  ```mysql
  MariaDB [gfg]> \. schema.sql
  Query OK, 0 rows affected (0.013 sec)
  
  Query OK, 0 rows affected (0.014 sec)
  
  Query OK, 1 row affected (0.002 sec)
  
  Query OK, 1 row affected (0.001 sec)
  
  Query OK, 1 row affected (0.003 sec)
  
  Query OK, 1 row affected (0.001 sec)
  
  Query OK, 1 row affected (0.001 sec)
  
  Query OK, 1 row affected (0.001 sec)
  
  MariaDB [gfg]>
  ```
- Delete a table: `Drop TABLE <table_name>` (N.B. Tables names are **case-sensitive**.)
  ```mysql
  MariaDB [gfg]> show Tables;
  +---------------+
  | Tables_in_gfg |
  +---------------+
  | Employee      |
  | Scores        |
  | animal        |
  | salary        |
  +---------------+
  4 rows in set (0.001 sec)
  
  MariaDB [gfg]> DROP TABLE salary;
  Query OK, 0 rows affected (0.010 sec)
  
  MariaDB [gfg]> DROP TABLE employee;
  ERROR 1051 (42S02): Unknown table 'gfg.employee'
  MariaDB [gfg]> drop table Employee;
  Query OK, 0 rows affected (0.009 sec)
  ```
- **escape reserved words**, i.e. avoid coincidence with reserved MySQL keywords, **use `` to surround it**, e.g.
  ```mysql
  # If weird_table contains columns named FROM, WHERE, etc.
  SELECT `FROM`, `WHERE` FROM weird_table;
  ```






### A-ranger
```bash
~ ❯❯❯ sudo mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 29
Server version: 10.5.9-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> connect db_gfg;
Connection id:    30
Current database: db_gfg

MariaDB [db_gfg]> GRANT ALL PRIVILEGES ON db_gfg.* TO 'phunc20'@'localhost';
Query OK, 0 rows affected (0.003 sec)

MariaDB [db_gfg]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.001 sec)

MariaDB [db_gfg]> quit
Bye
~ ❯❯❯ ran git-repos/phunc20/sql/




show grants for 'phunc20'@'localhost';

MariaDB [db_gfg]> show grants for 'phunc20'@'localhost';
+----------------------------------------------------------------------------------------------------------------+
| Grants for phunc20@localhost                                                                                   |
+----------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `phunc20`@`localhost` IDENTIFIED BY PASSWORD '*BF06A06D69EC935E85659FCDED1F6A80426ABD3B' |
| GRANT ALL PRIVILEGES ON `dbGFG`.* TO `phunc20`@`localhost`                                                     |
| GRANT ALL PRIVILEGES ON `db_gfg`.`db_gfg` TO `phunc20`@`localhost`                                             |
+----------------------------------------------------------------------------------------------------------------+
3 rows in set (0.000 sec)

MariaDB [db_gfg]> show grants for 'phunc20'@'localhost';
+----------------------------------------------------------------------------------------------------------------+
| Grants for phunc20@localhost                                                                                   |
+----------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `phunc20`@`localhost` IDENTIFIED BY PASSWORD '*BF06A06D69EC935E85659FCDED1F6A80426ABD3B' |
| GRANT ALL PRIVILEGES ON `dbGFG`.* TO `phunc20`@`localhost`                                                     |
| GRANT ALL PRIVILEGES ON `db_gfg`.* TO `phunc20`@`localhost`                                                    |
| GRANT ALL PRIVILEGES ON `db_gfg`.`db_gfg` TO `phunc20`@`localhost`                                             |
+----------------------------------------------------------------------------------------------------------------+
4 rows in set (0.000 sec)

MariaDB [db_gfg]>
```

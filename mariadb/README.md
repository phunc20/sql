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

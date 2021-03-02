learining resources
- [https://zaiste.net/posts/postgresql-primer-for-busy-people/](https://zaiste.net/posts/postgresql-primer-for-busy-people/)
https://www.postgresql.org/docs/online-resources/
https://www.postgresqltutorial.com/

### Use PostgreSQL
```bash
~ ❯❯❯ psql -l
                                  List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges
-----------+----------+----------+-------------+-------------+-----------------------
 dbGFG     | phunc20  | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 dvdrental | phunc20  | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
(5 rows)

~ ❯❯❯ psql -d dbGFG
psql (13.2)
Type "help" for help.

dbGFG=#
```

### Run commands collected in a single file
Inside some database of `psql`, run **`\i <filename>`**. For example,
```postgresql
dbGFG=# \i baskets.sql
CREATE TABLE
CREATE TABLE
INSERT 0 4
INSERT 0 4
dbGFG=# \dt
          List of relations
 Schema |   Name   | Type  |  Owner
--------+----------+-------+---------
 public | basket_a | table | phunc20
 public | basket_b | table | phunc20
(2 rows)

dbGFG=#
```



### Import dvdrental database

```bash
~/downloads ❯❯❯ pg_restore -d dvdrental dvdrental.tar


```


### Datatype
```
dvdrental=# SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'actor';
 column_name |          data_type
-------------+-----------------------------
 actor_id    | integer
 last_update | timestamp without time zone
 first_name  | character varying
 last_name   | character varying
(4 rows)
```


### Q&A
> When you add a primary key to a table, PostgreSQL creates a unique B-tree index on the column or a group of columns used to define the primary key.
**(?1)** B-tree.

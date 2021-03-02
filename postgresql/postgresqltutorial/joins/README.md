- `LEFT JOIN` and `LEFT OUTER JOIN` are synonymous.
- Similarly, `RIGHT JOIN` and `RIGHT OUTER JOIN` are synonymous.

```sql
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

dbGFG=# SELECT * FROM basket_b;
 a |  fruit_a
---+----------
 1 | Apple
 2 | Orange
 3 | Banana
 4 | Cucumber
(4 rows)

dbGFG=# SELECT * FROM basket_b;
 b |  fruit_b
---+------------
 1 | Orange
 2 | Apple
 3 | Watermelon
 4 | Pear
(4 rows)

dbGFG=# \i inner_join.sql
 a | fruit_a | b | fruit_b
---+---------+---+---------
 1 | Apple   | 2 | Apple
 2 | Orange  | 1 | Orange
(2 rows)

dbGFG=# \i left_join_1.sql
 a | fruit_a  | b | fruit_b
---+----------+---+---------
 1 | Apple    | 2 | Apple
 2 | Orange   | 1 | Orange
 3 | Banana   |   |
 4 | Cucumber |   |
(4 rows)

dbGFG=# \i left_outer_join_1.sql
 a | fruit_a  | b | fruit_b
---+----------+---+---------
 1 | Apple    | 2 | Apple
 2 | Orange   | 1 | Orange
 3 | Banana   |   |
 4 | Cucumber |   |
(4 rows)

dbGFG=# \i left_join_2.sql
 a | fruit_a  | b | fruit_b
---+----------+---+---------
 3 | Banana   |   |
 4 | Cucumber |   |
(2 rows)

dbGFG=# \i left_outer_join_2.sql
 a | fruit_a  | b | fruit_b
---+----------+---+---------
 3 | Banana   |   |
 4 | Cucumber |   |
(2 rows)

dbGFG=# \i right_join_1.sql
 a | fruit_a | b |  fruit_b
---+---------+---+------------
 2 | Orange  | 1 | Orange
 1 | Apple   | 2 | Apple
   |         | 3 | Watermelon
   |         | 4 | Pear
(4 rows)

dbGFG=# \i right_outer_join_1.sql
 a | fruit_a | b |  fruit_b
---+---------+---+------------
 2 | Orange  | 1 | Orange
 1 | Apple   | 2 | Apple
   |         | 3 | Watermelon
   |         | 4 | Pear
(4 rows)

dbGFG=# \i right_join_2.sql
 a | fruit_a | b |  fruit_b
---+---------+---+------------
   |         | 3 | Watermelon
   |         | 4 | Pear
(2 rows)

dbGFG=# \i right_outer_join_2.sql
 a | fruit_a | b |  fruit_b
---+---------+---+------------
   |         | 3 | Watermelon
   |         | 4 | Pear
(2 rows)

dbGFG=# \i full_outer_join_1.sql
 a | fruit_a  | b |  fruit_b
---+----------+---+------------
 1 | Apple    | 2 | Apple
 2 | Orange   | 1 | Orange
 3 | Banana   |   |
 4 | Cucumber |   |
   |          | 3 | Watermelon
   |          | 4 | Pear
(6 rows)

dbGFG=# \i full_outer_join_2.sql
 a | fruit_a  | b |  fruit_b
---+----------+---+------------
 3 | Banana   |   |
 4 | Cucumber |   |
   |          | 3 | Watermelon
   |          | 4 | Pear
(4 rows)
```

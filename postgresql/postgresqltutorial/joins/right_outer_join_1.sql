SELECT
  a,
  fruit_a,
  b,
  fruit_b
FROM
  basket_a
RIGHT OUTER JOIN
  basket_b
ON fruit_a = fruit_b;

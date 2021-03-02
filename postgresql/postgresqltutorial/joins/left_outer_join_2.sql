SELECT
  a,
  fruit_a,
  b,
  fruit_b
FROM
  basket_a
LEFT OUTER JOIN
  basket_b
ON fruit_a = fruit_b
WHERE b IS NULL;

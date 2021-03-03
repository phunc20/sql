# Objective
Render all SQL reserved words uppercase regardless of it being
- lowercase
- mixed case


## Technical Details
01. `sed`'s **extended regular expression** might be needed.<br>
For example, in the following example, I want to replace `select` by `SELECT`.
  ```bash
  ~/.../database/0178-rank_scores/mysql ❯❯❯ cat sol.sql
  select
      score,
      DENSE_RANK() OVER ( ORDER BY score DESC ) `rank`
  from Scores;
  ~/.../database/0178-rank_scores/mysql ❯❯❯ cat sql_reserved_words.sed
  s/(^| )select$/SELECT /
  ~/.../database/0178-rank_scores/mysql ❯❯❯ sed -f sql_reserved_words.sed sol.sql
  select
      score,
      DENSE_RANK() OVER ( ORDER BY score DESC ) `rank`
  from Scores;
  ~/.../database/0178-rank_scores/mysql ❯❯❯ sed -E -f sql_reserved_words.sed sol.sql
  SELECT
      score,
      DENSE_RANK() OVER ( ORDER BY score DESC ) `rank`
  from Scores;
  ```

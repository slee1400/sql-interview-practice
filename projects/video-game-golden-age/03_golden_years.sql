-- Query 3: Golden Years of Video Games
-- Goal:
-- Find years where critics or users gave very high average ratings.
-- Specifically, include years where avg_critic_score > 9 OR avg_user_score > 9.
-- Return year, num_games, avg_critic_score, avg_user_score, and diff.
-- diff = avg_critic_score - avg_user_score.
-- Results should be ordered by year in ascending order.
-- Output name in the original project: golden_years

SELECT
  year, COALESCE(critics.num_games, users.num_games) AS num_games,
  critics.avg_critic_score, users.avg_user_score,
  critics.avg_critic_score - users.avg_user_score AS diff
FROM critics_avg_year_rating AS critics
FULL JOIN users_avg_year_rating AS users
  USING (year)
WHERE critics.avg_critic_score > 9
   OR users.avg_user_score > 9
ORDER BY year ASC;

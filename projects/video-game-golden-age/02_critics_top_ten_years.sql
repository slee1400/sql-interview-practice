-- Query 2: Top Ten Years by Average Critic Score
-- Goal:
-- Find the ten years with the highest average critic score.
-- Only include years where at least four games have critic scores.
-- Return year, num_games, and avg_critic_score.
-- Round avg_critic_score to 2 decimal places.
-- Output name in the original project: critics_top_ten_years

SELECT year, COUNT(*) AS num_games,
  ROUND(AVG(critic_score), 2) AS avg_critic_score
FROM game_sales AS game
INNER JOIN reviews AS review
USING (name)
WHERE critic_score IS NOT NULL
GROUP BY year
HAVING COUNT(*) >= 4
ORDER BY avg_critic_score DESC
LIMIT 10;

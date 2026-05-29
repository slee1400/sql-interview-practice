-- Query 1: Best-Selling Games
-- Goal:
-- Find the ten best-selling games.
-- The output should contain all columns from the game_sales table.
-- Results should be sorted by games_sold in descending order.
-- Output name in the original project: best_selling_games

SELECT *
FROM game_sales
ORDER BY games_sold DESC
LIMIT 10;

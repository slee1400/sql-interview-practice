-- Problem: Pages With No Likes
-- Platform: DataLemur
-- Difficulty: Easy
-- Topic: LEFT JOIN, anti-join pattern

-- Goal:
-- Return the IDs of Facebook pages that have zero likes.
-- Sort the output by page ID in ascending order.

SELECT page_id
FROM pages
LEFT JOIN page_likes
  USING (page_id)
WHERE liked_date IS NULL
ORDER BY page_id ASC;

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

-- Notes:
-- This problem is asking for pages that exist in the pages table
-- but do not have matching records in the page_likes table.
-- This is a common anti-join pattern.

-- Why LEFT JOIN?
-- We start from the pages table because we want to keep all pages, including pages that have no likes.
-- Then we join page_likes to check whether each page has a matching like record.
-- If a page has no matching record in page_likes, the joined columns from page_likes will be NULL.
-- Therefore, WHERE liked_date IS NULL filters for pages with no likes.

-- Why not FULL JOIN?
-- A FULL JOIN would return all rows from both tables, including likes that do not match any page.
-- In this problem, that is unnecessary because a like should belong to an existing page through page_id.
-- Since the question only asks for pages with no likes, LEFT JOIN is more direct and appropriate.

-- Alternative solution using EXCEPT:
-- We can also solve this by selecting all page IDs from pages and removing
-- the page IDs that appear in page_likes.

SELECT page_id
FROM pages
  
EXCEPT

SELECT page_id
FROM page_likes
ORDER BY page_id ASC;

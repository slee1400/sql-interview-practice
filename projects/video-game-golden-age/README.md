# Video Game Golden Age Analysis

This SQL project analyzes video game sales and review data to explore whether there was a "golden age" of video games.

The project uses sales data, critic scores, and user scores to identify:
- The ten best-selling video games
- The ten release years with the highest average critic scores
- Years where critics and users broadly agreed that games were highly rated

## Skills Demonstrated

- Sorting and filtering data
- Aggregation with COUNT and AVG
- Rounding numeric results
- INNER JOIN and FULL JOIN
- GROUP BY and HAVING
- Common Table Expressions
- Comparing critic and user ratings
- Using COALESCE to handle values from joined tables

## Files

- `01_best_selling_games.sql`: Finds the top ten best-selling games.
- `02_critics_top_ten_years.sql`: Finds the ten years with the highest average critic score, requiring at least four reviewed games per year.
- `03_golden_years.sql`: Finds years where either critics or users gave average scores above 9.

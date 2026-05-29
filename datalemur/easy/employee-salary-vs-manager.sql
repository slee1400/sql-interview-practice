-- Problem: Employees Earning More Than Their Managers
-- Platform: DataLemur
-- Difficulty: Easy
-- Topic: Self-join, CTE

-- Goal:
-- Return employees who earn more than their direct managers.

-- Main idea:
-- The employee table contains both employees and managers.
-- Since a manager is also an employee, we can join the employee table to itself.
-- This is called a self-join.
--
-- Here, we first use a CTE to create a temporary result table that matches
-- each employee with their manager.
-- Then, in the main query, we filter for employees whose salary is greater
-- than their manager's salary.

WITH salary_comparison AS (
  SELECT
    e.employee_id,
    e.name AS employee_name,
    e.salary AS employee_salary,
    m.name AS manager_name,
    m.salary AS manager_salary
  FROM employee AS e
  INNER JOIN employee AS m
    ON e.manager_id = m.employee_id
)

SELECT
  employee_id,
  employee_name
FROM salary_comparison
WHERE employee_salary > manager_salary
ORDER BY employee_id ASC;

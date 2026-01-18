-- busy but inefficient employees
-----------------------------------------------------------------
SELECT emp_id , 
       department,
       working_hours,
       performance_score,
       ROUND(performance_Score*1.0/working_hours , 2) as productivity
FROM employees
WHERE working_hours > (SELECT AVG(working_hours) from employees)
ORDER BY productivity ASC
-------------------------------------------------------------------
-- high performer but working less hours
-------------------------------------------------------------------
SELECT emp_id,
       department,
       working_hours,
       performance_score,
       
FROM employees 
where performance_score >8 and
     working_hours <(SELECT AVG(working_hours) from employees);
------------------------------------------------------------------
-- department with high profit dependency
------------------------------------------------------------------
WITH dept_profit AS (
    SELECT
        department,
        SUM(profit) AS profit
    FROM department_sales
    GROUP BY department
)
SELECT
    department,
    ROUND(profit * 1.0 / SUM(profit) OVER (), 2) AS profit_contribution
FROM dept_profit
order by profit_contribution desc



       
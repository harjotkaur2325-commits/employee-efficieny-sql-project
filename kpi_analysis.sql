--KPI 1:  Employee Efficiency 
-------------------------------------------------------------------------

-- Average performance by department
SELECT department,
  AVG(performance_score) AS avg_performance
FROM employees
GROUP BY department;

-- Productivity (performance per hour) 
SELECT emp_id ,
   performance_score * 1.0 / working_hours AS productivity
FROM employees;
ORDER BY productivity ASC

--------------------------------------------------------------------------
-- KPI 2: Attrition Analysis
--------------------------------------------------------------------------
SELECT department , 
  SUM(left_company)*1.0 / count(emp_id) as attrition_rate
FROM employees 
GROUP BY department

---------------------------------------------------------------------------
--KPI 3: Profit & cost Analysis
---------------------------------------------------------------------------
WITH  dept_profit AS(
SELECT department ,
 SUM(profit) as depart_profit
FROM department_sales
GROUP BY department
) 
SELECT department ,
  ROUND(depart_profit*1.0/ SUM(depart_profit) ,2) as profit_contribution
FROM dept_profit
ORDER BY profit_contribution DESC; 

  
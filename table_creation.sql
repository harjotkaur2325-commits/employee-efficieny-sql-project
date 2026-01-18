-- Create employees table
CREATE TABLE IF NOT EXISTS public.employees (
    emp_id INT,
    department VARCHAR(50),
    working_hours INT,
    performance_score DECIMAL(3,1),
    salary INT,
    left_company INT
);

-- Create department_sales table
CREATE TABLE IF NOT EXISTS public.department_sales (
    department VARCHAR(50),
    revenue INT,
    profit INT
);

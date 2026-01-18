# employee-efficieny-sql-project
## 📌 objective
This project is focus on analysing employee's efficiency , attrition , department's profit contribution , performance using SQL.
The goal is to convert business problem into measurable KPI's and derive data-deriven business insights that  help to improve the business profitability and productivity.
the project is built using PostgreSQL and execute through PgAdmin.

## 🗂️ Project Structure 
employee-efficiency-project/
│
├── table_creation.sql        # Database & table creation
├── data_import.sql           # Importing CSV data into tables
├── kpi_analysis.sql          # KPI calculations & business metrics
├── business_insights.md      # Insights derived from analysis
└── README.md                 # Project documentation

## 🧠 Business problems addressed
1. Is productivity driven by working hours or performance?
2. Are employees working long hours but delivering low performance?
3. Which department contribute most of the company's profit?
4. Which department have high attrition rate?
5. how dependent is the company on specific departments for profit?

## 📊 Key KPIs analyzed
1. employee's productivity (performance per working_hours)
2. Average performance score by department
3. Attriiton rate by department
4. Profit contribution by department
5. High-Risk departments based on attrition or performance

## 🛠️Tool and Technologies
Database - PostgreSQL
SQL Tool - PgAdmin
language - SQL
Concept Used :-
1.GROUP BY 
2.HAVING
3.CTE( with clause)
4.Aggregrates
5.Windows Function
6.sub-queries

## 📁 Data Description
## Employees Table
1. emp_id
2. department
3. working_hours
4. performance
5. salary
6. left_company

## Department_Sales Table
1. department
2. profit
3. revenue
Each table contain 100 rows of realistic sample data.

## ▶️ How to Run the Project
1. Open  pgAdimn
2. Create a database named:
   employee_efficiency
3.Run file in this order:
  1. table_creation.sql
  2. data_import.sql
  3. kpi_analysis.sql
4. Refresh the tables after execution

## 📈 Sample business insights
1. High performance do not always leads by long working hours.
2. Certain departments contribute disproportionately to total profit.
3. high attrtion is observed in departments with low performance scores.
4. performance-based incentives are more effective than hours-based evaluation.

## 👤 Author
Harjot Kaur
Aspiring Data Analyst | SQL | Business Analytics

## ⭐ Acknowledgement
This project is created for learning and practicing real-world SQL analytics and business thinking.




 

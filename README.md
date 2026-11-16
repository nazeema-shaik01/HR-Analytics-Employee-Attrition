HR Analytics – Employee Attrition Analysis

1. Project Overview

This project analyses employee attrition using MySQL. The goal is to identify patterns in employee turnover, understand which employee groups have higher attrition rates, and provide recommendations to improve employee retention.

2. Business Problem

The company wants to understand why employees are leaving and identify departments, job roles, and employee groups with higher attrition rates.

This analysis helps HR teams identify retention challenges and make data-driven workforce decisions.

3. Dataset Information

-Dataset: IBM HR Analytics Employee Attrition & Performance
-Total Records: 1,470 employees
-Database: hr_analytics
-Table: employees
-Tool: MySQL Workbench

4. Data Cleaning and Validation

The following steps were performed:

- Imported the CSV dataset into MySQL.
- Corrected column formatting.
- Checked for missing and NULL values.
- Checked for duplicate records.
- Removed unnecessary columns: EmployeeCount, Over18, and StandardHours.
- Created and verified the cleaned employees table.
- Confirmed that the final table contains 1,470 records.

5. SQL Concepts Used

- SELECT, WHERE and ORDER BY
- GROUP BY and HAVING
- Aggregate functions: COUNT, SUM, AVG, MIN and MAX
- CASE statements and conditional aggregation
- DISTINCT
- ROUND
- Subqueries
- Correlated subqueries
- Filtering and grouping data

6. Business Analysis Performed

The project includes 37 SQL analyses covering:

- Overall employee attrition
- Department-wise attrition
- Job role analysis
- Gender and age group analysis
- Salary comparisons
- Overtime and business travel
- Job satisfaction and work-life balance
- Environment satisfaction
- Years of experience and years at the company
- Distance from home
- Job level and employee involvement
- Combined-factor analysis
- Salary comparisons using subqueries

7. Key Findings

| Analysis | Finding |
|---|---:|
| Total employees | 1,470 |
| Employees who left | 237 |
| Overall attrition rate | 16.12% |
| Sales department attrition | 20.63% |
| Sales Representative attrition | 39.76% |
| Overtime employees' attrition | 30.53% |
| Non-overtime employees' attrition | 10.44% |
| Employees under 25 attrition | 39.18% |
| Employees with 0–2 years of experience attrition | 43.90% |

8. Business Problems and Recommendations

Based on the analysis, the following areas require attention:

1. Entry-level employee retention: Improve onboarding, mentoring and career development.
2. Sales department attrition: Review sales targets, incentives and workload.
3. Overtime-related attrition: Monitor overtime and distribute workloads effectively.
4. Employee satisfaction: Improve workplace conditions and work-life balance.
5. Career development:Review promotion opportunities and employee training.

9. Project Files

- 01_data_cleaning.sql` – Data cleaning queries.
- 02_data_validation.sql` – Data validation queries.
- 03_business_analysis.sql` – Business analysis queries.
- 04_business_problems_and_recommendations.md` – Business problems and recommendations.
- `README.md` – Project documentation.

10. Conclusion

This project demonstrates how MySQL can be used to clean, validate and analyse HR data to identify employee attrition patterns.

The findings provide useful insights for HR teams to investigate retention challenges and develop employee retention strategies.

Note: The analysis identifies associations and patterns in the available dataset. It does not prove that any particular factor directly causes employee attrition.
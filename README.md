# HR Analytics – Employee Attrition Analysis

## Project Overview

This project focuses on analysing employee attrition using MySQL. The objective is to explore employee data, identify patterns in workforce turnover, and understand which employee groups have higher attrition rates.

The analysis uses SQL queries to extract meaningful insights and provide data-driven recommendations that can help HR teams improve employee retention.

## Business Problem

Employee attrition can create challenges for organisations, including increased recruitment costs, loss of experienced employees, and workforce planning difficulties.

The objective of this project is to analyse employee data and identify departments, job roles, and employee characteristics associated with higher attrition rates.

## Dataset Information

- Dataset: IBM HR Analytics Employee Attrition & Performance
- Total Records: 1,470
- Database: MySQL
- Table: employees
- Tool: MySQL Workbench

## Tools and Technologies

- MySQL
- MySQL Workbench
- SQL

## Data Cleaning and Preparation

The dataset was prepared before performing the analysis.

Key activities included:

- Importing the CSV dataset into MySQL.
- Correcting column formatting.
- Checking missing and NULL values.
- Identifying duplicate records.
- Removing unnecessary columns such as EmployeeCount, Over18, and StandardHours.
- Creating and validating the cleaned employees table.
- Verifying the final record count of 1,470 employees.

## SQL Analysis

A total of 37 SQL analyses were performed to investigate different aspects of employee attrition.

Key analysis areas included:

- Overall employee attrition rate.
- Department-wise attrition.
- Job role and employee demographics.
- Salary analysis and comparisons.
- Overtime and business travel.
- Job satisfaction and work-life balance.
- Environment satisfaction.
- Employee experience and tenure.
- Distance from home.
- Job level and employee involvement.
- Combined-factor analysis.
- Subqueries and correlated subqueries.

## Key Findings

| Business Metric | Result |
|---|---:|
| Total Employees | 1,470 |
| Employees Who Left | 237 |
| Overall Attrition Rate | 16.12% |
| Sales Department Attrition | 20.63% |
| Sales Representative Attrition | 39.76% |
| Overtime Employees Attrition | 30.53% |
| Non-Overtime Employees Attrition | 10.44% |
| Employees Under 25 Attrition | 39.18% |
| Employees with 0–2 Years Experience Attrition | 43.90% |

## Business Insights and Recommendations

1. Employee Retention: Entry-level employees show higher attrition. Improve onboarding, mentoring and career development.

2. Sales Department: Sales has a higher attrition rate than other departments. Review sales targets, incentives and workload.

3. Overtime: Employees working overtime have a higher attrition rate. Review workload distribution and overtime practices.

4. Employee Satisfaction: Lower satisfaction groups show higher attrition. Improve employee engagement and workplace support.

5. Career Development: Review promotion opportunities and provide training to support employee growth.

## Project Structure

HR-Analytics-Employee-Attrition/

- 01_data_cleaning.sql
- 02_data_validation.sql
- 03_business_analysis.sql
- 04_business_problems_and_recommendations.md
- README.md

## Conclusion

This project demonstrates the use of MySQL for data cleaning, validation and business analysis.

The analysis identified employee groups and workplace factors associated with higher attrition rates. These insights can help HR teams investigate retention challenges and make informed workforce decisions.

Note: The findings represent associations in the available dataset and do not establish direct causes of employee attrition.

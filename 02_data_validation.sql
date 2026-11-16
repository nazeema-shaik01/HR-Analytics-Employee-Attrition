-- Check table structure
DESCRIBE employees;

-- View sample employee records
SELECT *
FROM employees
LIMIT 10;

-- Check total number of records
SELECT COUNT(*) AS total_records
FROM employees;

-- Check employees who left
SELECT COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes';

-- Check employees who stayed
SELECT COUNT(*) AS employees_stayed
FROM employees
WHERE Attrition = 'No';

-- Check for missing employee numbers
SELECT COUNT(*) AS missing_employee_numbers
FROM employees_raw
WHERE EmployeeNumber IS NULL;

-- Check for missing MonthlyIncome values
SELECT COUNT(*)
FROM employees_raw
WHERE MonthlyIncome IS NULL;

-- Check for missing Department values
SELECT COUNT(*)
FROM employees_raw
WHERE Department IS NULL;

-- Check for duplicate employee numbers
SELECT EmployeeNumber, COUNT(*) AS duplicate_records
FROM employees_raw
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1; 

-- Check for missing JobRole values
SELECT COUNT(*) AS missing_job_role
FROM employees_raw
WHERE JobRole IS NULL;

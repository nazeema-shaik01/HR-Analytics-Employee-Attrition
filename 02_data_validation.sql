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

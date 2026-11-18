--Basic Employee Analysis

-- 1. Total employees in each department
SELECT Department, COUNT(*) AS total_employees
FROM employees
GROUP BY Department; 


-- 2. Employees who left in each department
SELECT Department, COUNT(*)AS Num_of_employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department; 


-- 3. Employees currently working in each department
SELECT Department, COUNT(*) AS Num_of_employees_working
FROM employees
WHERE Attrition = 'No'
GROUP BY Department; 


-- 4. Employee attrition count by gender
SELECT Gender, COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Gender;


-- 5. Employee attrition count by job role
SELECT JobRole, COUNT(*) AS employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobRole; 


-- 6. Average monthly income by department
SELECT Department, AVG(MonthlyIncome) AS Average_monthly_income
FROM employees
GROUP BY Department; 


-- 7. Maximum monthly income by department
SELECT Department, MAX(MonthlyIncome) AS Maximum_monthly_income
FROM employees
GROUP BY Department; 


-- 8. Minimum monthly income by department
SELECT Department, MIN(MonthlyIncome) AS Min_monthly_income
FROM employees
GROUP BY Department; 

--Overall & Department-wise Attrition

-- 9. Overall employee attrition rate
SELECT
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees;


-- 10. Department-wise employee attrition rate
SELECT department, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY department; 

--Attrition by Job Role and Employee Factors

-- 11. Attrition rate by job role
SELECT JobRole, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY JobRole; 


-- 12. Attrition rate by overtime
SELECT OverTime,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND (
      COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY OverTime
ORDER BY attrition_rate DESC; 


-- 13. Attrition rate by business travel
SELECT BusinessTravel,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND (
      COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY BusinessTravel
ORDER BY attrition_rate DESC; 


-- 14. Attrition rate by individual age
SELECT Age,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left, 
COUNT(*)  AS total_employees,
ROUND (
      COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY Age
ORDER BY Age; 


-- 15. Attrition rate by age group
SELECT
    CASE
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55 and above'
    END AS age_group,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY age_group
ORDER BY MIN(Age);


-- 16. Attrition rate by salary group
SELECT 
    CASE
        WHEN MonthlyIncome < 3000 THEN 'Below 3000'
        WHEN MonthlyIncome BETWEEN 3000 AND 5000 THEN '3000–5000'
        WHEN MonthlyIncome BETWEEN 5001 AND 7000 THEN '5001–7000'
        WHEN MonthlyIncome BETWEEN 7001 AND 10000 THEN '7001–10000'
        WHEN MonthlyIncome > 10000 THEN 'Above 10000' 
          ELSE 'Other'
	END AS Salary_group,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY Salary_group; 


-- 17. Attrition rate by education field
SELECT EducationField, 	
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END ) AS employees_left,
COUNT(*) AS total_employees,
ROUND( 
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END ) * 100.0 
    / COUNT(*), 2) AS attrition_rate
FROM employees 
GROUP BY EducationField;


-- 18. Attrition rate by marital status
SELECT MaritalStatus, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END ) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees 
GROUP BY MaritalStatus; 


-- 19. Attrition rate by gender
SELECT Gender,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY Gender; 

--Attrition by Job Satisfaction and Work Environment

-- 20. Attrition rate by job satisfaction
SELECT JobSatisfaction,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY JobSatisfaction;

-- 21. Attrition rate by work-life balance
SELECT WorkLifeBalance,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY WorkLifeBalance;


-- 22. Attrition rate by environment satisfaction
SELECT EnvironmentSatisfaction, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY EnvironmentSatisfaction;

--Attrition by Experience and Career Growth

-- 23. Attrition rate by years at company
SELECT
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 2 THEN '0-2 years'
        WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 years'
        ELSE 'More than 10 years'
    END AS YearsAtCompany_Group,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY YearsAtCompany_Group;


-- 24. Attrition rate by years since last promotion
SELECT
    CASE
        WHEN YearsSinceLastPromotion BETWEEN 0 AND 1 THEN '0-1 years'
        WHEN YearsSinceLastPromotion BETWEEN 2 AND 4 THEN '2-4 years'
        WHEN YearsSinceLastPromotion BETWEEN 5 AND 7 THEN '5-7 years'
        ELSE 'More than 7 years'
    END AS promotion_Group,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY promotion_Group;


-- 25. Attrition rate by total work experience
SELECT
    CASE
        WHEN TotalWorkingYears BETWEEN 0 AND 2 THEN '0-2 years'
        WHEN TotalWorkingYears BETWEEN 3 AND 5 THEN '3-5 years'
        WHEN TotalWorkingYears BETWEEN 6 AND 10 THEN '6-10 years'
		WHEN TotalWorkingYears BETWEEN 11 AND 20 THEN '11-20 years'
		ELSE 'More than 20 years'
    END AS Experience_Group,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY Experience_Group;


-- 26. Attrition rate by distance from home
SELECT
    CASE
        WHEN DistanceFromHome BETWEEN 0 AND 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 10 THEN '6-10 km'
        WHEN DistanceFromHome BETWEEN 11 AND 20 THEN '11-20 km'
		ELSE 'More than 20 km'
    END AS Distance_Group,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY Distance_Group;


-- 27. Attrition rate by job involvement
SELECT JobInvolvement, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY JobInvolvement; 

--Advanced SQL Analysis – Subqueries

-- 28. Employees earning above the overall average salary
SELECT EmployeeNumber, Age, Department, JobRole, MonthlyIncome
FROM employees
WHERE MonthlyIncome > (
                      SELECT AVG(MonthlyIncome)
                      FROM employees
                      ); 


-- 29. Count of employees earning above the overall average salary
SELECT COUNT(*) AS employees_above_average
FROM employees
WHERE MonthlyIncome > (
    SELECT AVG(MonthlyIncome)
    FROM employees
);


-- 30. Employees earning above their department's average salary
SELECT EmployeeNumber, Age, Department, JobRole, MonthlyIncome
FROM employees AS e1
WHERE MonthlyIncome > (
                      SELECT AVG(MonthlyIncome)
                      FROM employees AS e2
                      WHERE e1.Department = e2.Department
                      );


-- 31. Departments with attrition rates above the company average
SELECT
    Department,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_Rate
FROM employees
GROUP BY Department
HAVING
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
    / COUNT(*) > (
        SELECT
            COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
            / COUNT(*)
        FROM employees
    );


-- 32. Employees earning above their job role's average salary
SELECT EmployeeNumber, Department, JobRole, MonthlyIncome
FROM employees AS e1
WHERE MonthlyIncome > 
					(
                    SELECT AVG(MonthlyIncome) AS avg_monthly_income
                    FROM employees AS e2
                    WHERE e1.JobRole = e2.JobRole
                    ); 
                    

-- 33. Attrition rate by overtime and job satisfaction
SELECT
    OverTime,
    JobSatisfaction,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY OverTime, JobSatisfaction;



-- 34. Attrition rate by job satisfaction and work-life balance
SELECT
    JobSatisfaction,
    WorkLifeBalance,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY JobSatisfaction, WorkLifeBalance;


-- 35. Attrition rate by job satisfaction and years since last promotion
SELECT
    JobSatisfaction,
    YearsSinceLastPromotion,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY JobSatisfaction, YearsSinceLastPromotion;


-- 36. Attrition rate by job satisfaction and grouped years since last promotion
SELECT
    JobSatisfaction,
    CASE
        WHEN YearsSinceLastPromotion BETWEEN 0 AND 1 THEN '0-1 years'
        WHEN YearsSinceLastPromotion BETWEEN 2 AND 4 THEN '2-4 years'
        WHEN YearsSinceLastPromotion BETWEEN 5 AND 7 THEN '5-7 years'
        ELSE 'More than 7 years'
    END AS YearsSinceLastPromotion_Group,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY JobSatisfaction, YearsSinceLastPromotion_Group;


-- 37. Attrition rate by overtime and job level
SELECT
    OverTime,
    JobLevel,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY OverTime, JobLevel;



SELECT Department, COUNT(*) AS Total_employees
FROM employees
GROUP BY Department; 

SELECT Department, COUNT(*)AS Num_of_employees_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department; 

SELECT Department, COUNT(*) AS Num_of_employees_working
FROM employees
WHERE Attrition = 'No'
GROUP BY Department; 

SELECT Gender, COUNT(*) AS no_of_left
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Gender;

SELECT JobRole, COUNT(*)
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobRole; 

SELECT Department, AVG(MonthlyIncome) AS Average_monthly_income
FROM employees
GROUP BY Department; 

SELECT Department, MAX(MonthlyIncome) AS Maximum_monthly_income
FROM employees
GROUP BY Department; 

SELECT Department, MIN(MonthlyIncome) AS Min_monthly_income
FROM employees
GROUP BY Department; 

SELECT
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees;

SELECT department, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY department; 


SELECT JobRole, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS attrition_rate
FROM employees
GROUP BY JobRole; 

SELECT OverTime,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS no_of_emp_left, 
COUNT(*) AS total_emp,
ROUND (
      COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_rate
FROM employees
GROUP BY OverTime; 

SELECT BusinessTravel,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS no_of_emp_left, 
COUNT(*) AS total_emp,
ROUND (
      COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_rate
FROM employees
GROUP BY BusinessTravel; 

SELECT Age,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS no_of_emp_left, 
COUNT(*) AS total_emp,
ROUND (
      COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_rate
FROM employees
GROUP BY Age; 

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


SELECT EducationField, 	
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END ) AS employees_left,
COUNT(*) AS total_employees,
ROUND( 
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END ) * 100.0 
    / COUNT(*), 2) AS attrition_rate
FROM employees 
GROUP BY EducationField;

SELECT MaritalStatus, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END ) AS employees_left,
COUNT(*) AS total_employ,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees 
GROUP BY MaritalStatus; 


SELECT Gender,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY Gender; 

SELECT JobSatisfaction,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY JobSatisfaction;

SELECT WorkLifeBalance,
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY WorkLifeBalance;


SELECT EnvironmentSatisfaction, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY EnvironmentSatisfaction;


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

SELECT JobInvolvement, 
COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS employees_left,
COUNT(*) AS total_employees,
ROUND(
     COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
     /COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY JobInvolvement; 

SELECT EmployeeNumber, Age, Department, JobRole, MonthlyIncome
FROM employees
WHERE MonthlyIncome > (
                      SELECT AVG(MonthlyIncome)
                      FROM employees
                      ); 

SELECT COUNT(*) AS employees_above_average
FROM employees
WHERE MonthlyIncome > (
    SELECT AVG(MonthlyIncome)
    FROM employees
);


SELECT EmployeeNumber, Age, Department, JobRole, MonthlyIncome
FROM employees AS e1
WHERE MonthlyIncome > (
                      SELECT AVG(MonthlyIncome)
                      FROM employees AS e2
                      WHERE e1.Department = e2.Department
                      );


SELECT
    Department,
    ROUND(
        COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*), 2
    ) AS Attrition_Rate
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

SELECT EmployeeNumber, Department, JobRole, MonthlyIncome
FROM employees AS e1
WHERE MonthlyIncome > 
					(
                    SELECT AVG(MonthlyIncome) AS avg_monthly_income
                    FROM employees AS e2
                    WHERE e1.JobRole = e2.JobRole
                    ); 
                    

                    


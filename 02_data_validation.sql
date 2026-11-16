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

-- Check for missing values across all columns
SELECT
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS missing_Age,
    SUM(CASE WHEN Attrition IS NULL THEN 1 ELSE 0 END) AS missing_Attrition,
    SUM(CASE WHEN BusinessTravel IS NULL THEN 1 ELSE 0 END) AS missing_BusinessTravel,
    SUM(CASE WHEN DailyRate IS NULL THEN 1 ELSE 0 END) AS missing_DailyRate,
    SUM(CASE WHEN Department IS NULL THEN 1 ELSE 0 END) AS missing_Department,
    SUM(CASE WHEN DistanceFromHome IS NULL THEN 1 ELSE 0 END) AS missing_DistanceFromHome,
    SUM(CASE WHEN Education IS NULL THEN 1 ELSE 0 END) AS missing_Education,
    SUM(CASE WHEN EducationField IS NULL THEN 1 ELSE 0 END) AS missing_EducationField,
    SUM(CASE WHEN EmployeeCount IS NULL THEN 1 ELSE 0 END) AS missing_EmployeeCount,
    SUM(CASE WHEN EmployeeNumber IS NULL THEN 1 ELSE 0 END) AS missing_EmployeeNumber,
    SUM(CASE WHEN EnvironmentSatisfaction IS NULL THEN 1 ELSE 0 END) AS missing_EnvironmentSatisfaction,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS missing_Gender,
    SUM(CASE WHEN HourlyRate IS NULL THEN 1 ELSE 0 END) AS missing_HourlyRate,
    SUM(CASE WHEN JobInvolvement IS NULL THEN 1 ELSE 0 END) AS missing_JobInvolvement,
    SUM(CASE WHEN JobLevel IS NULL THEN 1 ELSE 0 END) AS missing_JobLevel,
    SUM(CASE WHEN JobRole IS NULL THEN 1 ELSE 0 END) AS missing_JobRole,
    SUM(CASE WHEN JobSatisfaction IS NULL THEN 1 ELSE 0 END) AS missing_JobSatisfaction,
    SUM(CASE WHEN MaritalStatus IS NULL THEN 1 ELSE 0 END) AS missing_MaritalStatus,
    SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 ELSE 0 END) AS missing_MonthlyIncome,
    SUM(CASE WHEN MonthlyRate IS NULL THEN 1 ELSE 0 END) AS missing_MonthlyRate,
    SUM(CASE WHEN NumCompaniesWorked IS NULL THEN 1 ELSE 0 END) AS missing_NumCompaniesWorked,
    SUM(CASE WHEN Over18 IS NULL THEN 1 ELSE 0 END) AS missing_Over18,
    SUM(CASE WHEN OverTime IS NULL THEN 1 ELSE 0 END) AS missing_OverTime,
    SUM(CASE WHEN PercentSalaryHike IS NULL THEN 1 ELSE 0 END) AS missing_PercentSalaryHike,
    SUM(CASE WHEN PerformanceRating IS NULL THEN 1 ELSE 0 END) AS missing_PerformanceRating,
    SUM(CASE WHEN RelationshipSatisfaction IS NULL THEN 1 ELSE 0 END) AS missing_RelationshipSatisfaction,
    SUM(CASE WHEN StandardHours IS NULL THEN 1 ELSE 0 END) AS missing_StandardHours,
    SUM(CASE WHEN StockOptionLevel IS NULL THEN 1 ELSE 0 END) AS missing_StockOptionLevel,
    SUM(CASE WHEN TotalWorkingYears IS NULL THEN 1 ELSE 0 END) AS missing_TotalWorkingYears,
    SUM(CASE WHEN TrainingTimesLastYear IS NULL THEN 1 ELSE 0 END) AS missing_TrainingTimesLastYear,
    SUM(CASE WHEN WorkLifeBalance IS NULL THEN 1 ELSE 0 END) AS missing_WorkLifeBalance,
    SUM(CASE WHEN YearsAtCompany IS NULL THEN 1 ELSE 0 END) AS missing_YearsAtCompany,
    SUM(CASE WHEN YearsInCurrentRole IS NULL THEN 1 ELSE 0 END) AS missing_YearsInCurrentRole,
    SUM(CASE WHEN YearsSinceLastPromotion IS NULL THEN 1 ELSE 0 END) AS missing_YearsSinceLastPromotion,
    SUM(CASE WHEN YearsWithCurrManager IS NULL THEN 1 ELSE 0 END) AS missing_YearsWithCurrManager
FROM employees_raw;

-- Check for duplicate rows in the raw dataset
SELECT COUNT(*) AS total_duplicate_records
FROM (
    SELECT *
    FROM employees_raw
    GROUP BY
        Age, Attrition, BusinessTravel, DailyRate, Department,
        DistanceFromHome, Education, EducationField, EmployeeCount,
        EmployeeNumber, EnvironmentSatisfaction, Gender, HourlyRate,
        JobInvolvement, JobLevel, JobRole, JobSatisfaction,
        MaritalStatus, MonthlyIncome, MonthlyRate, NumCompaniesWorked,
        Over18, OverTime, PercentSalaryHike, PerformanceRating,
        RelationshipSatisfaction, StandardHours, StockOptionLevel,
        TotalWorkingYears, TrainingTimesLastYear, WorkLifeBalance,
        YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion,
        YearsWithCurrManager
    HAVING COUNT(*) > 1
) AS duplicate_records;

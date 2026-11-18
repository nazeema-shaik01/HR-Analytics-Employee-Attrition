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
SELECT COUNT(*) AS duplicate_groups
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


-- Check for employees with invalid age values
SELECT EmployeeNumber, Age
FROM employees_raw
WHERE Age < 18 OR Age > 60; 

-- Check for employees with invalid monthly income values
SELECT EmployeeNumber, MonthlyIncome
FROM employees_raw
WHERE MonthlyIncome <= 0;

-- Check distinct values in Attrition
SELECT DISTINCT Attrition
FROM employees_raw;

-- Check distinct values in Department
SELECT DISTINCT Department
FROM employees_raw;

-- Check distinct values in Gender
SELECT DISTINCT Gender
FROM employees_raw;

-- Check distinct values in JobRole
SELECT DISTINCT JobRole
FROM employees_raw
ORDER BY JobRole;

-- Check distinct values in BusinessTravel
SELECT DISTINCT BusinessTravel
FROM employees_raw
ORDER BY BusinessTravel;

-- Check distinct values in EducationField
SELECT DISTINCT EducationField
FROM employees_raw
ORDER BY EducationField;

-- Check distinct values in MaritalStatus
SELECT DISTINCT MaritalStatus
FROM employees_raw
ORDER BY MaritalStatus;

-- Check distinct values in OverTime
SELECT DISTINCT OverTime
FROM employees_raw
ORDER BY OverTime;

-- Check distinct values in Over18
SELECT DISTINCT Over18
FROM employees_raw;

-- Check distinct values in Education
SELECT DISTINCT Education
FROM employees_raw
ORDER BY Education;

-- Check minimum and maximum values in numeric columns
SELECT
    MIN(EnvironmentSatisfaction) AS min_environment_satisfaction,
    MAX(EnvironmentSatisfaction) AS max_environment_satisfaction,

    MIN(JobInvolvement) AS min_job_involvement,
    MAX(JobInvolvement) AS max_job_involvement,

    MIN(JobLevel) AS min_job_level,
    MAX(JobLevel) AS max_job_level,

    MIN(JobSatisfaction) AS min_job_satisfaction,
    MAX(JobSatisfaction) AS max_job_satisfaction,

    MIN(PerformanceRating) AS min_performance_rating,
    MAX(PerformanceRating) AS max_performance_rating,

    MIN(RelationshipSatisfaction) AS min_relationship_satisfaction,
    MAX(RelationshipSatisfaction) AS max_relationship_satisfaction,

    MIN(WorkLifeBalance) AS min_work_life_balance,
    MAX(WorkLifeBalance) AS max_work_life_balance,

    MIN(StockOptionLevel) AS min_stock_option_level,
    MAX(StockOptionLevel) AS max_stock_option_level,

    MIN(YearsAtCompany) AS min_years_at_company,
    MAX(YearsAtCompany) AS max_years_at_company,

    MIN(TotalWorkingYears) AS min_total_working_years,
    MAX(TotalWorkingYears) AS max_total_working_years,

    MIN(TrainingTimesLastYear) AS min_training,
    MAX(TrainingTimesLastYear) AS max_training,

    MIN(YearsInCurrentRole) AS min_current_role,
    MAX(YearsInCurrentRole) AS max_current_role,

    MIN(YearsSinceLastPromotion) AS min_since_promotion,
    MAX(YearsSinceLastPromotion) AS max_since_promotion,

    MIN(YearsWithCurrManager) AS min_with_manager,
    MAX(YearsWithCurrManager) AS max_with_manager,

    MIN(NumCompaniesWorked) AS min_companies_worked,
    MAX(NumCompaniesWorked) AS max_companies_worked
FROM employees_raw;


-- Check total records and unique employee numbers
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT EmployeeNumber) AS unique_employees
FROM employees_raw;


-- Check distinct counts in columns excluded from the cleaned table
SELECT
    COUNT(DISTINCT EmployeeCount) AS employee_count_values,
    COUNT(DISTINCT Over18) AS over18_values,
    COUNT(DISTINCT StandardHours) AS standard_hours_values
FROM employees_raw;


-- Check unique values in columns excluded from the cleaned table
SELECT DISTINCT
    EmployeeCount,
    Over18,
    StandardHours
FROM employees_raw;




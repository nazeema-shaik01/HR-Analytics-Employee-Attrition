CREATE DATABASE hr_analytics;

USE hr_analytics;

SELECT DATABASE();

SELECT COUNT(*)
FROM employees_raw;

DESCRIBE employees_raw;

SELECT * FROM employees_raw
LIMIT 10; 

ALTER TABLE employees_raw
RENAME COLUMN `ï»¿Age` TO Age;

SELECT DISTINCT Attrition
FROM employees_raw;

SELECT DISTINCT Department
FROM employees_raw;

SELECT DISTINCT Gender
FROM employees_raw;

SELECT DISTINCT JobRole
FROM employees_raw
ORDER BY JobRole;

SELECT DISTINCT BusinessTravel
FROM employees_raw
ORDER BY BusinessTravel;

SELECT DISTINCT EducationField
FROM employees_raw
ORDER BY EducationField;

SELECT DISTINCT MaritalStatus
FROM employees_raw
ORDER BY MaritalStatus;

SELECT DISTINCT OverTime
FROM employees_raw
ORDER BY OverTime;

SELECT DISTINCT Over18
FROM employees_raw;

SELECT DISTINCT Education
FROM employees_raw
ORDER BY Education;

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

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT EmployeeNumber) AS unique_employees
FROM employees_raw;

SELECT
    COUNT(DISTINCT EmployeeCount) AS employee_count_values,
    COUNT(DISTINCT Over18) AS over18_values,
    COUNT(DISTINCT StandardHours) AS standard_hours_values
FROM employees_raw;

CREATE TABLE employees AS
SELECT
    Age,
    Attrition,
    BusinessTravel,
    DailyRate,
    Department,
    DistanceFromHome,
    Education,
    EducationField,
    EnvironmentSatisfaction,
    Gender,
    HourlyRate,
    JobInvolvement,
    JobLevel,
    JobRole,
    JobSatisfaction,
    MaritalStatus,
    MonthlyIncome,
    MonthlyRate,
    NumCompaniesWorked,
    EmployeeNumber,
    OverTime,
    PercentSalaryHike,
    PerformanceRating,
    RelationshipSatisfaction,
    StockOptionLevel,
    TotalWorkingYears,
    TrainingTimesLastYear,
    WorkLifeBalance,
    YearsAtCompany,
    YearsInCurrentRole,
    YearsSinceLastPromotion,
    YearsWithCurrManager
FROM employees_raw;

ALTER TABLE employees
ADD PRIMARY KEY (EmployeeNumber);
SELECT DISTINCT
    EmployeeCount,
    Over18,
    StandardHours
FROM employees_raw;

SELECT 
    EmployeeCount,
    Over18,
    StandardHours
FROM employees_raw;

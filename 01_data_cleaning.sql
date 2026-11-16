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

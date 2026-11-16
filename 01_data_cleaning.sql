-- 1. Create and select the database
CREATE DATABASE hr_analytics;

USE hr_analytics;

SELECT DATABASE();

-- 2. Inspect the raw dataset
SELECT COUNT(*)
FROM employees_raw;

DESCRIBE employees_raw;

SELECT * FROM employees_raw
LIMIT 10; 

-- 3. Rename the incorrect column name
ALTER TABLE employees_raw
RENAME COLUMN `ï»¿Age` TO Age;


-- 4. Create the cleaned employees table
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

-- 5. Add primary key to the cleaned table
ALTER TABLE employees
ADD PRIMARY KEY (EmployeeNumber);



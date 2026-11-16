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

SELECT * FROM employees; 

SELECT COUNT(*) AS total_records
FROM employees;

ALTER TABLE employees
ADD PRIMARY KEY (EmployeeNumber);

DESCRIBE employees;

SELECT * FROM employees; 

SELECT COUNT(*)
FROM employees; 

SELECT COUNT(*)
FROM employees
WHERE Attrition = 'Yes'; 

SELECT COUNT(*)
FROM employees
WHERE Attrition = 'No'; 


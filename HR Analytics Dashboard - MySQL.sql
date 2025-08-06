CREATE database HR ;
use HR ;
select * from `HR dataset`;

# Overall Employee Count:
SELECT COUNT("Employee Count") AS "Overall Employee" FROM `HR dataset`;

# Attrition Count:
select count(attrition) from `HR dataset`
where attrition='Yes';

# Attrition Rate:
SELECT round(sum(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS "Attrition Rate %"
FROM `HR dataset`;

# Active Employee:
SELECT COUNT(*) AS "Active Employee Count"
FROM `HR dataset`
WHERE Attrition = 'No';

# Average Age:
SELECT round(AVG(Age)) AS "Average Age"
FROM `HR dataset`;

# Department wise Attrition:
SELECT Department, Attrition, COUNT(*) AS "Employee Count"
FROM `HR dataset`
WHERE Attrition = 'Yes'
GROUP BY Department, Attrition													
ORDER BY Department, Attrition;

# Education Field wise Attrition:
SELECT `Education Field`, COUNT(*) AS "Employee Count"
FROM `HR dataset`
WHERE Attrition = 'Yes'
GROUP BY `Education Field`
ORDER BY `Education Field`;

# No of Employee by Age Group :
SELECT
  `CF_age band`,
  Gender,
  COUNT(*) AS "Employee Count"
FROM `HR dataset`
GROUP BY `CF_age band`, Gender
ORDER BY `CF_age band`, Gender;

# Attrition Rate by Gender for different Age Group:
SELECT
  `CF_age band`,
  Gender,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 ELSE NULL END) AS "Attrition Count"
FROM `HR dataset`
GROUP BY `CF_age band`, Gender
ORDER BY `CF_age band`, Gender;

# Job Satisfaction Rating:
SELECT
  `Job Role`,
  `Job Satisfaction`,
  COUNT(*) AS "Employee Count"
FROM `HR dataset`
GROUP BY `Job Role`, `Job Satisfaction`
ORDER BY `Job Role`, `Job Satisfaction`;

# Column Rename :
alter table `HR dataset`
rename column ï»¿Attrition to Attrition;




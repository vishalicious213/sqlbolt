-- SQL Lesson 7: OUTER JOINs

-- 1. Find the list of all buildings that have employees ✓

SELECT DISTINCT Building FROM employees;

-- 2. Find the list of all buildings and their capacity

SELECT * FROM buildings;

-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)

SELECT DISTINCT building_name, role FROM buildings
LEFT JOIN Employees
ON building_name = building;

-- DISTINCT applies to all columns in the query, it's not used for an individual column
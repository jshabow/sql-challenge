--STEP 1
-- List employee info and salaries "employees" and "Salaries" -- 
SELECT 
	"employees".emp_no,
	last_name,
	first_name,
	hire_date,
	sex,
	salary
FROM "employees", "Salaries"
WHERE "employees".emp_no = "Salaries".emp_no;

-- STEP 2
-- List employees hired in 1986
--Cant figure out the WHERE command here - 
SELECT 
	first_name,
	last_name,
	hire_date
FROM "employees"
WHERE hire_date >= '1/1/1986'
AND hire_date < '1/1/1987';

--STEP 3
-- List managers from each department
-- Reference dept_managers, Departments, and employees - join tables on dept_no and emp_no
SELECT
	"dept_managers".dept_no,
	"Departments".dept_name,
	"dept_managers".emp_no,
	"employees".last_name,
	"employees".first_name
FROM "dept_managers"
JOIN "Departments"
	ON "dept_managers".dept_no = "Departments".dept_no
JOIN "employees"
	ON "dept_managers".emp_no = "employees".emp_no;

--STEP 4
-- List employees with their department names
SELECT 
	"dept_employees".emp_no,
	"employees".last_name,
	"employees".first_name,
	"Departments".dept_name
FROM "dept_employees"
JOIN "Departments"
	ON "dept_employees".dept_no = "dept_employees".dept_no
JOIN "employees"
	ON "dept_employees".emp_no = "employees".emp_no;
	
--STEP 5
-- List all employees with first name "Hercules" and Last name starting with "B"
SELECT 
	first_name,
	last_name,
	sex
FROM "employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--STEP 6 
-- List employees from Sales department 
SELECT 
	"dept_employees".emp_no,
	"employees".last_name,
	"employees".first_name,
	"Departments".dept_name
FROM "dept_employees"
JOIN "employees"
	ON "dept_employees".emp_no = "employees".emp_no
JOIN "Departments"
	ON "dept_employees".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';

--STEP 7 
--List employees in Sales and Development depts.
SELECT
	"dept_employees".emp_no,
	"employees".last_name,
	"employees".first_name,
	"Departments".dept_name
FROM "dept_employees"
JOIN "employees"
	ON "dept_employees".emp_no = "employees".emp_no
JOIN "Departments"
	ON "dept_employees".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales'
OR "Departments".dept_name = 'Development';

--STEP 8
-- list in descending order - frequency count of employee last names 
SELECT last_name, COUNT(last_name) AS Frequency
FROM "employees"
GROUP BY last_name
ORDER BY 
COUNT(last_name) DESC;


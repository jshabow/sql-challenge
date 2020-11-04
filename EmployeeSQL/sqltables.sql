--Create "Departments" table
CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);
--Test table
SELECT * FROM "Departments";

--Create "dept_employees" table
CREATE TABLE "dept_employees" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);
--Test table
SELECT * FROM "dept_employees";

--Create "Salaries" table
CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);
--Test table
SELECT * FROM "Salaries";

--Create "Titles" table 
CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);
--Test table
SELECT * FROM "Titles";

--Create "employees" table 
CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);
--Test table
SELECT * FROM "employees";

--Create "dept_managers" table
CREATE TABLE "dept_managers" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL
);
--Test table
SELECT * FROM "dept_managers";

--Add foreign keys
ALTER TABLE "dept_employees" ADD CONSTRAINT "fk_dept_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_employees" ADD CONSTRAINT "fk_dept_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "dept_managers" ADD CONSTRAINT "fk_dept_managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "dept_managers" ADD CONSTRAINT "fk_dept_managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");








	
	
	
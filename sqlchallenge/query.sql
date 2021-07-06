-- This is query.sql
-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
CREATE VIEW emp_salary AS 
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
	LEFT JOIN salaries AS s
	ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no;
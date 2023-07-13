USE employees;

SELECT DISTINCT title FROM titles;

# List the first 10 last names sorted in descedning order
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;


DESCRIBE salaries;

# List employee numbers by salaries
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

# List employee numbers by salaries to find the tenth page of result
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;
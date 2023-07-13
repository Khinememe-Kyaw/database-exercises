USE employees;
# put first name in order
SELECT *
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;

# put put in order first name and then last name
SELECT *
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;


# put in order last name and then first name
SELECT *
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;

# put in order employee number and last name that has 'e'
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no ASC;

# put in order of descending employee number and last name that has 'e'
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;
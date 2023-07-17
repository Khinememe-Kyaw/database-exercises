USE employees;

#  use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
FROM titles;

# Find your query for employees whose last names start and end with 'E'
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name;

# Update your previous query to now find unique combinations of first and
# last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name
ORDER BY last_name;


# Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

# Add a COUNT() to your results and use GROUP BY to make it easier to find
# employees whose unusual name is shared with others.
SELECT DISTINCT CONCAT(count(last_name), ' ', last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of
# employees for each gender with those names.
SELECT CONCAT(count(*), '   ',gender)
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

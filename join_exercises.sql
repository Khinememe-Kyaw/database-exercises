USE employees;
show tables;
describe dept_manager;
describe dept_emp;
describe current_dept_emp;
describe employees;
describe departments;
describe salaries;



SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT t.title AS "title", COUNT(*) AS "Total"
FROM titles AS t
         JOIN employees AS e ON t.emp_no = e.emp_no
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
GROUP BY t.title;

SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager", s.salary AS "Salary"
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Employee",d.dept_name AS "Department", CONCAT(m.first_name, ' ', m.last_name) AS "Manager"
FROM employees AS e
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
         JOIN dept_manager AS dm ON de.dept_no = dm.dept_no
         JOIN employees AS m ON dm.emp_no = m.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';

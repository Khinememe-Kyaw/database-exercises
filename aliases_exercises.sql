USE employees;
SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date
FROM employees
ORDER BY full_name
    LIMIT 10;
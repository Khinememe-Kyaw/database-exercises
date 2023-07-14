USE employees;

# People who were born on  Christmas
SELECT *
FROM employees
WHERE month(birth_date)= 12
    AND day(birth_date)=25;

#People who were born on Christmas and got hired in 90s
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
    AND month(birth_date)= 12
  AND day(birth_date)=25;

#Person who was born on Christmas, got hired in 90s, the oldest employee and who was hired last
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND month(birth_date)= 12
  AND day(birth_date)=25
    ORDER BY hire_date DESC, birth_date ASC
    LIMIT 1;

# how many days they have been working at the company
SELECT *, datediff(now(),hire_date) AS day_worked
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND month(birth_date)= 12
  AND day(birth_date)=25
ORDER BY hire_date DESC, birth_date;
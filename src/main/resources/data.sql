SELECT first_name AS имя, last_name AS фамилия
FROM employee;

SELECT * FROM employee
WHERE age < 30 OR age > 50;

SELECT * FROM employee
WHERE age > 30 AND age < 50;

SELECT * FROM employee
ORDER BY last_name DESC;

SELECT * FROM employee
WHERE LENGTH(first_name) > 4;

UPDATE employee SET first_name = 'Maria' WHERE id = 1;
UPDATE employee SET first_name = 'Sidor' WHERE id = 2;

SELECT first_name AS Имя, AVG(age) FROM employee GROUP BY first_name;

SELECT first_name AS Имя, SUM(age) FROM employee GROUP BY first_name;

SELECT first_name AS имя, age AS возраст FROM employee WHERE age = (SELECT MIN(age) FROM employee);

SELECT first_name AS имя, MAX(age) AS возраст FROM employee
WHERE first_name IN (SELECT first_name FROM employee GROUP BY first_name HAVING COUNT(*) > 1)
GROUP BY имя
ORDER BY возраст DESC;




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
HAVING count(first_name)>1
ORDER BY возраст DESC;

CREATE TABLE city(
                     city_id BIGSERIAL NOT NULL PRIMARY KEY,
                     city_name VARCHAR(60) NOT NULL
);

ALTER TABLE employee ADD COLUMN city_id BIGINT DEFAULT NULL;

ALTER TABLE employee ADD CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city (city_id);

INSERT INTO city(city_name) VALUES ('Tula');
INSERT INTO city(city_name) VALUES ('Kazan');
INSERT INTO city(city_name) VALUES ('Moscow');

UPDATE employee SET city_id = 1 where id = 1;
UPDATE employee SET city_id = 1 where id = 2;
UPDATE employee SET city_id = 3 where id = 3;
UPDATE employee SET city_id = 3 where id = 4;
UPDATE employee SET city_id = 4 where id = 5;

SELECT city, first_name, last_name FROM city
LEFT JOIN employee
ON employee.city_id = city.city_id;

SELECT first_name, city FROM employee
FULL JOIN city
ON employee.city_id = city.city_id;

SELECT first_name, city FROM employee
CROSS JOIN city;






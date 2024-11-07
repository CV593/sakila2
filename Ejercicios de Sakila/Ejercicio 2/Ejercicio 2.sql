USE sakila;

SELECT * 
FROM address 
WHERE district = 'California' 
  AND phone LIKE '%274%';
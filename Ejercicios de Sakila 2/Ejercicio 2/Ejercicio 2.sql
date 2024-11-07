USE sakila2;

SELECT * 
FROM address 
WHERE district = 'California' 
  AND phone LIKE '%274%';

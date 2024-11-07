USE sakila2;

SELECT * 
FROM film 
WHERE (length BETWEEN 100 AND 120) 
   OR (length BETWEEN 50 AND 70);


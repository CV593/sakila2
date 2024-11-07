USE sakila;

SELECT * 
FROM film 
WHERE (rental_rate = 0.99 OR rental_rate = 2.99) 
  AND (rating = 'G' OR rating = 'R') 
  AND description LIKE '%cocodrile%';
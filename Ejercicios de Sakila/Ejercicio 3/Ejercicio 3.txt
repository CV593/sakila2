USE sakila;

SELECT * 
FROM film 
WHERE (description LIKE '%Epic%' OR description LIKE '%Brilliant%') 
  AND length > 180;

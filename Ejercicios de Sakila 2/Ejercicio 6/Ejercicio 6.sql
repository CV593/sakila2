USE sakila2;

SELECT * 
FROM address 
WHERE district IN ('Ontario', 'Punjab') 
   OR postal_code LIKE '%5' 
   OR phone LIKE '%5';

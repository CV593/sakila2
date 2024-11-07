USE sakila2;

SELECT 
    actor_id,
    first_name,
    last_name,
    pelicula
FROM (
    SELECT 
        a.actor_id,
        a.first_name,
        a.last_name,
        f.title AS pelicula,
        ROW_NUMBER() OVER (PARTITION BY a.actor_id ORDER BY f.title) AS rn
    FROM 
        sakila.actor AS a
    JOIN 
        sakila.film_actor AS fa ON a.actor_id = fa.actor_id
    JOIN 
        sakila.film AS f ON fa.film_id = f.film_id
) AS actor_peliculas
WHERE 
    rn <= 3
ORDER BY 
    actor_id;

/**
ORDER BY
  Ordena los registros de forma ascendente (ASC)
  o descente (DESC)

*/

USE sakila;

# Muestra todos los registros ordenados ascendentemente
# por la columna 'first_name' 
SELECT *
FROM actor 
ORDER BY first_name ASC;

# Muestra todos los registros cuyo 'first_name' = 'PENELOPE'
# y los ordena de forma ascendente por 'last_name' 
SELECT *
FROM actor 
WHERE first_name = 'PENELOPE'
ORDER BY last_name ASC;


# Muestra todos los registros cuyo 'first_name' = 'PENELOPE'
# y los ordena de forma descendente por 'actor_id' 
SELECT *
FROM actor 
WHERE first_name = 'PENELOPE'
ORDER BY actor_id DESC;
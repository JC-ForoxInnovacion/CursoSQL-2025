# Mostrar todas las columnAS (*) y todos los registros de la tabla 'actor'.
SELECT * FROM `actor`;


# Mostrar sólo algunas columnas (`actor_id`, `last_name`) y todos los 
# registros de la tabla 'actor'.
SELECT `actor_id`, `last_name` FROM actor;


# Mostrar sólo algunas columnas (`actor_id`, `last_name`) estableciendo 
# el alias de la columna `last_name` como `apellido`y todos los registros 
# de la tabla 'actor'.
SELECT `actor_id`, `last_name` AS 'apellido' FROM actor;


# Mostrar sólo algunas columnas (`actor_id`, `last_name`) estableciendo 
# el alias de la columna `actor_id` como `identificación`, last_name` como`
# `apellido`y todos los registros # de la tabla 'actor'.
SELECT `actor_id` AS `identificación`, `last_name` AS 'apellido' FROM actor;


# Concatenar varias columnas y separadores para mostrar en una sola columna 
# (full_name) los resultados "en caliente".
SELECT concat(first_name , ' ' , last_name) AS full_name FROM actor;


# Consulta desde una base de datos diferente a sakila.
# Se debe utilizar notación de punto base_de_datos.tabla (sakila.actor).
SELECT concat(first_name , ' ' , last_name) AS full_name FROM sakila.actor;
/*
MIN() 
Muestra el valor mínimo de una columna
*/

USE sakila;

SELECT MIN(film_id) FROM film;

# +--------------+
# | min(film_id) |
# +--------------+
# |            1 |
# +--------------+
# 1 row in set (0,000 sec)


/*
MAX() 
Muestra el valor máximo de una columna
*/

SELECT MAX(film_id) 
FROM film;

# +--------------+
# | MAX(film_id) |
# +--------------+
# |         1000 |
# +--------------+
# 1 row in set (0,000 sec)

SELECT MAX(film_id, title) 
FROM film;

# ERROR 1064 (42000): You have an error in your SQL syntax; 
# check the manual that corresponds to your MariaDB server 
# version for the right syntax to use 
# near ' title) FROM film' at line 1


/*
El mínimo o el máximo de dos o más columnas concatenadas
*/

SELECT film_id, title
FROM film;


SELECT MIN(title) 
FROM film;

SELECT MAX(title) 
FROM film;

SELECT CONCAT(film_id, ' ', title)
FROM film;

SELECT MIN(CONCAT(film_id, ' ', title)) 
FROM film;

SELECT MAX(CONCAT(film_id, ' ', title)) AS id_title
FROM film;

# Produce error 
SELECT CONCAT(film_id, ' ', title) AS id_and_title, MIN(id_and_title) 
FROM film;

# #1054 - No se reconoce la columna 'id_and_title' en SELECT





SELECT MIN(CONCAT(film_id, ' ', title));
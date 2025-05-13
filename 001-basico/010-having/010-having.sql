/* 

HAVING es utilizado para crear condiciones, permite utilizar funciones como COUNT, MAX, SUM, etc.

SELECT <columnas/*>
FROM <tabla>
GROUP BY <columna>
HAVING <función>;
GROUP BY
*/

USE sakila;


SELECT rental_duration
FROM `film` 
GROUP BY rental_duration;

# +-----------------+
# | rental_duration |
# +-----------------+
# |               3 |
# |               4 |
# |               5 |
# |               6 |
# |               7 |
# +-----------------+
# 5 rows in set (0,001 sec)


SELECT 
rental_duration,
COUNT(film_id)
FROM `film` 
GROUP BY rental_duration;

# +-----------------+----------------+
# | rental_duration | COUNT(film_id) |
# +-----------------+----------------+
# |               3 |            203 |
# |               4 |            203 |
# |               5 |            191 |
# |               6 |            212 |
# |               7 |            191 |
# +-----------------+----------------+
# 5 rows in set (0,001 sec)




SELECT rental_duration,
COUNT(film_id),
rating
FROM `film` 
GROUP BY rental_duration
HAVING rental_duration = 3;

# Usamos HAVING como si fuese un WHERE.
# También incluimos el campo 'rating', debemos
# recordar que al usar GROUP BY solo mostrará
# el primer registro

# +-----------------+----------------+--------+
# | rental_duration | COUNT(film_id) | rating |
# +-----------------+----------------+--------+
# |               3 |            203 | G      |
# +-----------------+----------------+--------+
# 1 row in set (0,001 sec)



SELECT rental_duration,
COUNT(film_id),
rating
FROM `film` 
WHERE rating = 'G'
GROUP BY rental_duration
HAVING rental_duration = 3;

# Combinando WHERE con HAVING obtendremos las
# películas que tienen un 'rating'='G' en el 
# subconjunto de películas cuyo 'rental_duration' = 3

+---------+-----------------+----------------+--------+
| film_id | rental_duration | COUNT(film_id) | rating |
+---------+-----------------+----------------+--------+
|       2 |               3 |             49 | G      |
+---------+-----------------+----------------+--------+




SELECT 
rental_duration,
COUNT(film_id)
FROM `film` 
GROUP BY rental_duration
HAVING COUNT(film_id) <= 200;

# +-----------------+----------------+
# | rental_duration | COUNT(film_id) |
# +-----------------+----------------+
# |               5 |            191 |
# |               7 |            191 |
# +-----------------+----------------+
# 2 rows in set (0,001 sec)

SELECT
rental_duration,
COUNT(rental_duration)
FROM film
GROUP BY rental_duration
HAVING COUNT(rental_duration) <= 200;

# La misma consulta anterior utilizando
# otros campos

# +-----------------+------------------------+
# | rental_duration | COUNT(rental_duration) |
# +-----------------+------------------------+
# |               5 |                    191 |
# |               7 |                    191 |
# +-----------------+------------------------+
# 2 rows in set (0,001 sec)



SELECT
country_id,
COUNT(city)
FROM city
GROUP BY country_id;

# +------------+-------------+
# | country_id | COUNT(city) |
# +------------+-------------+
# |          1 |           1 |
# |          2 |           3 |
# |          3 |           1 |
#     ...
# |        108 |           2 |
# |        109 |           1 |
# +------------+-------------+
# 109 rows in set (0,001 sec)


SELECT
country_id,
COUNT(city)
FROM city
GROUP BY country_id
HAVING count(city) >= 60;

# ¿Existe algún país con al menos 60 ciudades
# registradas en esta tabla?

# +------------+-------------+
# | country_id | COUNT(city) |
# +------------+-------------+
# |         44 |          60 |
# +------------+-------------+
# 1 row in set (0,001 sec)

SELECT *
FROM country
WHERE country_id = 44;

# +------------+---------+---------------------+
# | country_id | country | last_update         |
# +------------+---------+---------------------+
# |         44 | India   | 2006-02-15 04:44:00 |
# +------------+---------+---------------------+
# 1 row in set (0,000 sec)


SELECT *
FROM country
HAVING SUM(country_id) = 44;

# Empty set (0,000 sec)


SELECT *
FROM country
GROUP BY country_id
HAVING SUM(country_id) = 44;


# +------------+---------+---------------------+
# | country_id | country | last_update         |
# +------------+---------+---------------------+
# |         44 | India   | 2006-02-15 04:44:00 |
# +------------+---------+---------------------+
# 1 row in set (0,000 sec)



SELECT
country_id,
COUNT(city)
FROM city
GROUP BY country_id
HAVING count(city) < 10;
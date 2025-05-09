/* 
GROUP BY
Agrupar conjuntos de registros segun una columa/criterio

Normalmente se utiliza con funciones avg(), sum(), ...
*/

USE sakila;

SELECT *
FROM actor
GROUP BY first_name
ORDER BY first_name DESC;

# 128 rows in set (0,001 sec)


# Muestra los registros agrupados por el nombre y 
# de manera descendente

# NOTA: Sabemos que existen 200 actores y 4 actrices con
# el nombre PENELOPE pero al mostrarse agrupados solo 
visualizamos la primera de ellas

SELECT *
FROM actor
WHERE first_name = 'PENELOPE'
GROUP BY first_name
ORDER BY first_name DESC;


# +----------+------------+-----------+---------------------+
# | actor_id | first_name | last_name | last_update         |
# +----------+------------+-----------+---------------------+
# |        1 | PENELOPE   | GUINESS   | 2006-02-15 04:34:33 |
# +----------+------------+-----------+---------------------+
# 1 row in set (0,000 sec)

# Aunque uses WHERE se agrupará y solo verás el 
# primer registro que contiene PENELOPE



SELECT 
COUNT(city_id) as 'cant_ciudades', 
country_id as 'pais'
FROM `city`
GROUP BY `country_id`;




# Ejercicio
# Utilizando ORDER BY en la tabla payment muestra:
# 1) El importe
# 2) El total de películas alquiladas por ese importe
# 3) EL total del importe percibido por grupo

SELECT 
amount AS importe, 
COUNT(payment_id) AS numero_alquileres, 
SUM(amount) AS importe_total
FROM payment
GROUP BY amount;

# +---------+-------------------+---------------+
# | importe | numero_alquileres | importe_total |
# +---------+-------------------+---------------+
# |    0.00 |                24 |          0.00 |
# |    0.99 |              2977 |       2947.23 |
# |    1.98 |                 1 |          1.98 |
# |    1.99 |               638 |       1269.62 |
# |    2.99 |              3542 |      10590.58 |
# |    3.98 |                 8 |         31.84 |
# |    3.99 |              1108 |       4420.92 |
# |    4.99 |              3789 |      18907.11 |
# |    5.98 |                 7 |         41.86 |
# |    5.99 |              1299 |       7781.01 |
# |    6.99 |              1119 |       7821.81 |
# |    7.98 |                 5 |         39.90 |
# |    7.99 |               670 |       5353.30 |
# |    8.97 |                 1 |          8.97 |
# |    8.99 |               485 |       4360.15 |
# |    9.98 |                 1 |          9.98 |
# |    9.99 |               256 |       2557.44 |
# |   10.99 |               104 |       1142.96 |
# |   11.99 |                10 |        119.90 |
# +---------+-------------------+---------------+
# 19 rows in set (0,019 sec)


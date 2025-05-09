/* 
AVG()
Muestra el promedio de una columna con valores (TODOS)
o siguiendo criterios de busqueda, ...
*/

USE sakila;

# Consulta con el número de alquileres, importe total, 
# promedio (con AVG()) y promedio calculado manualmente.

SELECT 
COUNT(amount) AS numero_alquileres,
SUM(amount) AS importe_total_alquileres,
AVG(amount) AS promedio_avg,
SUM(amount) / COUNT(amount) AS promedio_manual
FROM payment;

# +-------------------+--------------------------+--------------+-----------------+
# | numero_alquileres | importe_total_alquileres | promedio_avg | promedio_manual |
# +-------------------+--------------------------+--------------+-----------------+
# |             16044 |                 67406.56 |     4.201356 |        4.201356 |
# +-------------------+--------------------------+--------------+-----------------+

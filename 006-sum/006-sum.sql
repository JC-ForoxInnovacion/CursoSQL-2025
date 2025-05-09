/* 
SUM()

Suma los valores de una columna siguiendo criterios
específicos como los especificados en WHERE o TODOS
los valores de TODOS los registros de la tabla si no
 existen criterios de búsqueda y/o restricción.
*/

USE sakila;

SELECT SUM(actor_id) FROM `actor`;


SELECT actor_id, first_name 
FROM `actor`
WHERE first_name = 'PENELOPE';


SELECT SUM(actor_id), first_name, last_name
FROM `actor`
WHERE first_name = 'PENELOPE';

# Ejecuta esta consulta y observa cual es el único
# apellido que se muestra y razona el ¿por qúe?


# Mostrar la suma de dos campos numéricos y una tercera
# suma de ambos resultados

SELECT * FROM payment;

SELECT SUM(amount) , SUM(payment_id), SUM(amount) + SUM(payment_id)
FROM payment
WHERE payment_id <= 5;

SELECT SUM(amount) , SUM(payment_id), SUM(SUM(amount), SUM(payment_id))
FROM payment
WHERE payment_id <= 5;


# Mostrar la suma de dos campos numéricos y una tercera
# columna con la resta, multiplicación y división
# de ambos resultados

SELECT SUM(amount) , SUM(payment_id), SUM(amount) - SUM(payment_id)
FROM payment
WHERE payment_id <= 5;

SELECT SUM(amount) , SUM(payment_id), SUM(amount) * SUM(payment_id)
FROM payment
WHERE payment_id <= 5;

SELECT SUM(amount) , SUM(payment_id), SUM(amount) / SUM(payment_id)
FROM payment
WHERE payment_id <= 5;


SELECT SUM(first_name) 
FROM actor 
WHERE actor_id <= 5;

# Mostrando filas 0 - 0 (total de 1, 
# La consulta tardó 0.0002 segundos.)

+-----------------+
| SUM(first_name) |
+-----------------+
|               0 |
+-----------------+
1 row in set, 5 warnings (0,000 sec)

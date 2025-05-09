/* 
COUNT()
Cuenta la cantidad de registros en una tabla
*/

USE sakila;

SELECT COUNT(*)
FROM actor;

SELECT COUNT(actor_id)
FROM actor;

SELECT COUNT(actor_id)
FROM actor
WHERE first_name = 'SANDRA';

SELECT amount
FROM payment;

SELECT amount
FROM payment;

# 16044 rows in set (0,008 sec)


SELECT COUNT(amount)
FROM payment;

# +---------------+
# | COUNT(amount) |
# +---------------+
# |         16044 |
# +---------------+


SELECT COUNT(amount)
FROM payment
WHERE amount <= 5;

# +---------------+
# | COUNT(amount) |
# +---------------+
# |         12087 |
# +---------------+


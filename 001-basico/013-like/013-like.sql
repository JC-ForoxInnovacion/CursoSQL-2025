/*

NOT()

Operador utilizado para negar una condición.

SELECT <columnas/*>
FROM <tabla>
WHERE NOT <condición>;
*/


SELECT *
FROM `actor`
WHERE `first_name` = 'PENELOPE';

# +----------+------------+-----------+---------------------+
# | actor_id | first_name | last_name | last_update         |
# +----------+------------+-----------+---------------------+
# |        1 | PENELOPE   | GUINESS   | 2006-02-15 04:34:33 |
# |       54 | PENELOPE   | PINKETT   | 2006-02-15 04:34:33 |
# |      104 | PENELOPE   | CRONYN    | 2006-02-15 04:34:33 |
# |      120 | PENELOPE   | MONROE    | 2006-02-15 04:34:33 |
# +----------+------------+-----------+---------------------+
# 4 rows in set (0,000 sec)




SELECT *
FROM `actor`
WHERE NOT `first_name` = 'PENELOPE';

+----------+-------------+--------------+---------------------+
| actor_id | first_name  | last_name    | last_update         |
+----------+-------------+--------------+---------------------+
|        2 | NICK        | WAHLBERG     | 2006-02-15 04:34:33 |
|        3 | ED          | CHASE        | 2006-02-15 04:34:33 |
|        4 | JENNIFER    | DAVIS        | 2006-02-15 04:34:33 |
  ...
|      199 | JULIA       | FAWCETT      | 2006-02-15 04:34:33 |
|      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |
+----------+-------------+--------------+---------------------+
196 rows in set (0,001 sec)




SELECT 
`rental_rate`, 
COUNT(`rental_rate`) AS 'Conteo'
FROM `film`
GROUP BY `rental_rate`
ORDER BY COUNT(`rental_rate`) ASC;

# +-------------+--------+
# | rental_rate | Conteo |
# +-------------+--------+
# |        2.99 |    323 |
# |        4.99 |    336 |
# |        0.99 |    341 |
# +-------------+--------+
# 3 rows in set (0,001 sec)




SELECT 
`rental_rate`, 
COUNT(`rental_rate`) AS 'Conteo'
FROM `film`
GROUP BY `rental_rate`
HAVING COUNT(`rental_rate`) > 300 AND COUNT(`rental_rate`) < 339
ORDER BY COUNT(`rental_rate`) ASC;

# +-------------+--------+
# | rental_rate | Conteo |
# +-------------+--------+
# |        2.99 |    323 |
# |        4.99 |    336 |
# +-------------+--------+
# 2 rows in set (0,001 sec)


SELECT 
`rental_rate`, 
COUNT(`rental_rate`) AS 'Conteo'
FROM `film`
GROUP BY `rental_rate`
HAVING NOT (COUNT(`rental_rate`) > 300 AND COUNT(`rental_rate`) < 339)
ORDER BY COUNT(`rental_rate`) ASC;

# +-------------+--------+
# | rental_rate | Conteo |
# +-------------+--------+
# |        0.99 |    341 |
# +-------------+--------+
# 1 row in set (0,001 sec)

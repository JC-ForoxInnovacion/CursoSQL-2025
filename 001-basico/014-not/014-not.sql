/*

LIKE()

Se utiliza en la clausula WHERE.

Con LIKE se utilizan dos comodines:
– % representa 0, 1 o múltiples caracteres.
– _ representa un solo carácter.

SELECT <columnas/*>
FROM <tabla>
WHERE <columna> LIKE <buscado>;
*/


SELECT *
FROM actor
WHERE first_name LIKE 'F%';

# Actores cuyo nombre comienza por la letra "F"

# +----------+------------+-----------+---------------------+
# | actor_id | first_name | last_name | last_update         |
# +----------+------------+-----------+---------------------+
# |       16 | FRED       | COSTNER   | 2006-02-15 04:34:33 |
# |       48 | FRANCES    | DAY-LEWIS | 2006-02-15 04:34:33 |
# |       55 | FAY        | KILMER    | 2006-02-15 04:34:33 |
# |      126 | FRANCES    | TOMEI     | 2006-02-15 04:34:33 |
# |      147 | FAY        | WINSLET   | 2006-02-15 04:34:33 |
# |      156 | FAY        | WOOD      | 2006-02-15 04:34:33 |
# +----------+------------+-----------+---------------------+
# 6 rows in set (0,000 sec)



# Actores cuyo nombre contenga la letra 'E' como segundo caracter

SELECT *
FROM actor
WHERE first_name LIKE '_E%';

# +----------+------------+-------------+---------------------+
# | actor_id | first_name | last_name   | last_update         |
# +----------+------------+-------------+---------------------+
# |        1 | PENELOPE   | GUINESS     | 2006-02-15 04:34:33 |
# |        4 | JENNIFER   | DAVIS       | 2006-02-15 04:34:33 |
# ...
# |      197 | REESE      | WEST        | 2006-02-15 04:34:33 |
# +----------+------------+-------------+---------------------+
# 36 rows in set (0,001 sec)


# Actores cuyo nombre contenga la letra 'E' como segundo caracter
# finalice con 'TR' + dos caracteres en el apellido

SELECT *
FROM actor
WHERE first_name LIKE '_E%' AND last_name LIKE '%TR__';

+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       69 | KENNETH    | PALTROW   | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+



SELECT *
FROM actor
WHERE first_name LIKE '_E%' OR last_name LIKE '%TR__';

+----------+------------+-------------+---------------------+
| actor_id | first_name | last_name   | last_update         |
+----------+------------+-------------+---------------------+
|        1 | PENELOPE   | GUINESS     | 2006-02-15 04:34:33 |
|        4 | JENNIFER   | DAVIS       | 2006-02-15 04:34:33 |
|        6 | BETTE      | NICHOLSON   | 2006-02-15 04:34:33 |
|       11 | ZERO       | CAGE        | 2006-02-15 04:34:33 |
|       17 | HELEN      | VOIGHT      | 2006-02-15 04:34:33 |
|       21 | KIRSTEN    | PALTROW     | 2006-02-15 04:34:33 | 
|       25 | KEVIN      | BLOOM       | 2006-02-15 04:34:33 |
  ...
|      196 | BELA       | WALKEN      | 2006-02-15 04:34:33 |
|      197 | REESE      | WEST        | 2006-02-15 04:34:33 |
+----------+------------+-------------+---------------------+
37 rows in set (0,001 sec)



# Buscando en un campo numérico

SELECT *
FROM actor
WHERE actor_id LIKE '%5';

# +----------+------------+--------------+---------------------+
# | actor_id | first_name | last_name    | last_update         |
# +----------+------------+--------------+---------------------+
# |        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
# |       15 | CUBA       | OLIVIER      | 2006-02-15 04:34:33 |
# |       25 | KEVIN      | BLOOM        | 2006-02-15 04:34:33 |
# |       35 | JUDY       | DEAN         | 2006-02-15 04:34:33 |
# |       45 | REESE      | KILMER       | 2006-02-15 04:34:33 |
# |       55 | FAY        | KILMER       | 2006-02-15 04:34:33 |
# |       65 | ANGELA     | HUDSON       | 2006-02-15 04:34:33 |
# |       75 | BURT       | POSEY        | 2006-02-15 04:34:33 |
# |       85 | MINNIE     | ZELLWEGER    | 2006-02-15 04:34:33 |
# |       95 | DARYL      | WAHLBERG     | 2006-02-15 04:34:33 |
# |      105 | SIDNEY     | CROWE        | 2006-02-15 04:34:33 |
# |      115 | HARRISON   | BALE         | 2006-02-15 04:34:33 |
# |      125 | ALBERT     | NOLTE        | 2006-02-15 04:34:33 |
# |      135 | RITA       | REYNOLDS     | 2006-02-15 04:34:33 |
# |      145 | KIM        | ALLEN        | 2006-02-15 04:34:33 |
# |      155 | IAN        | TANDY        | 2006-02-15 04:34:33 |
# |      165 | AL         | GARLAND      | 2006-02-15 04:34:33 |
# |      175 | WILLIAM    | HACKMAN      | 2006-02-15 04:34:33 |
# |      185 | MICHAEL    | BOLGER       | 2006-02-15 04:34:33 |
# |      195 | JAYNE      | SILVERSTONE  | 2006-02-15 04:34:33 |
# +----------+------------+--------------+---------------------+
# 20 rows in set (0,000 sec)

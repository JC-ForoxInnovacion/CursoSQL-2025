/*
Operadores
  igual a =
  diferente de <>
  menor que <
  menor o igual que <=
  mayor que >
  mayor o igual que >=
*/

# Busca todos los registros cuyo apellido sea CHASE
SELECT * 
FROM `actor` 
WHERE `last_name` = 'CHASE';


Textos completos
actor_id   first_name   last_name   last_update
3          ED           CHASE       2006-02-15 04:34:33
176        JON          CHASE       2006-02-15 04:34:33


# Busca todos los registros cuyo apellido sea 
# diferente de CHASE
SELECT * 
FROM `actor` 
WHERE `last_name` <> 'CHASE';

# Busca los actores con id > 100
SELECT *
FROM actor
WHERE actor_id > 100;

# Busca los actores con id <> 100
SELECT *
FROM actor
WHERE actor_id <> 100;

/*
DISTINCT

Muestra las apariciones únicas de los datos contenidos en
una columna.

SELECT DISTINCT 
<columna> 
from actor;
*/


SELECT DISTINCT `first_name` 
from actor;

# Mostrando filas 0 - 24 (total de 128, 
# La consulta tardó 0.0002 segundos.)


/*
Cuando utilizas varias columnas la tupla formada por
TODAS ellas es a la que aplica DISTINCT
*/

SELECT DISTINCT `actor_id`, `first_name` 
from actor;

# Mostrando filas 0 - 24 (total de 200, 
# La consulta tardó 0.0001 segundos.)

# Muestra los 200 actores ya que las tuplas
# formadas por `actor_id`, `first_name` son 
# siempre diferentes porque `actor_id` es un
# campo numérico y autoincremental y esto lo
# hace único.


/* 
DISTINCT + WHERE
*/



SELECT DISTINCT `first_name`
FROM actor
WHERE `first_name` = 'PENELOPE';
# Mostrando filas 0 - 0 (total de 1, 
# La consulta tardó 0.0001 segundos.)


SELECT DISTINCT `last_name`
FROM actor
WHERE `first_name` = 'PENELOPE';

# Mostrando filas 0 - 3 (total de 4, 
# La consulta tardó 0.0003 segundos.)
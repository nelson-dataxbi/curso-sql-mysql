-- Ejercicios de modificación de datos 
-- usando la tabla Sakila

use sakila;

-- Ejercicio 1: 
-- Añade un nuevo actor a la tabla `actor`.

-- Ejercicio 2: 
-- Intenta insertar un nuevo actor sin especificar el apellido, lo que viola la restricción NOT NULL.

-- Ejercicio 3: 
-- Actualiza la dirección de correo electrónico de un cliente en la tabla `customer`.

-- Ejercicio 4:
-- Intenta actualizar el `store_id` de un cliente a un valor que no existe en la tabla `store`.

-- Ejercicio 5:
-- Elimina un actor de la tabla `actor` que no tiene películas asociadas.

-- Ejercicio 6: 
-- Intenta eliminar un país de la tabla `country` que todavía tiene ciudades asociadas 
-- en la tabla `city`.

-- Ejercicio 7: 
-- Actualiza el correo electrónico de todos los clientes
-- El nuevo correo electrónico será en el formato nombre.apellido@example.com


-- Ejercicio 8:
-- Inserta en la tabla `film_text` entradas para películas que no están aún en esta 
-- tabla pero sí presentes en la tabla `film`.


-- Ejercicio 9: 
-- Actualiza la columna `rating` de la tabla `film` para establecerla como 'PG-13' para todas 
-- las películas que en la tabla `film_actor` tengan a un actor específico (por ejemplo, actor_id = 1).


-- Ejercicio 10: 
-- En la tabla `customer`, actualiza la columna `active` a 0 (falso) para todos los clientes 
-- que no han realizado un alquiler recientemente (por ejemplo, no tienen registros en la tabla 
-- `rental` en el último año).

-- Ejercicio 11: 
-- Elimina todas las direcciones (`address`) que no están asignadas a ningún cliente o tienda o empleado.


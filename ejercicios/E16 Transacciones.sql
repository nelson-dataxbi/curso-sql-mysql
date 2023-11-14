-- Ejemplo del uso de una transaccion implícita
-- DBeaver: Para que este ejemplo funcione hay que cambiar el modeo de
-- transacción a Commit manual.

use Sakila;

SELECT * FROM customer WHERE customer_id = 10;

START TRANSACTION;

-- Primero, actualizaremos el email de un cliente
UPDATE customer SET email = 'new.email@example.com' WHERE customer_id = 10;

-- Ahora intentaremos una operación que sabemos que fallará: actualizar una clave foránea a un valor inexistente
-- Esta operación está destinada a fallar porque el store_id no existe
UPDATE customer SET store_id = 999 WHERE customer_id = 10;

-- Si todo salió bien, hacemos COMMIT
COMMIT;

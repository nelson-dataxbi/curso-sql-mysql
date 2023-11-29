-- Ejercicios para comprobar como los índices influyen en el rendimiento

--  Ejercicio 1: Creación de la Base de Datos y la Tabla
--   1. Crea una nueva base de datos llamada 'rendimiento'.
--   2. Dentro de esta base de datos, crea una tabla llamada 'usuarios'.
--   3. La tabla 'usuarios' debe tener las siguientes columnas:
--      a. 'id': un número entero, autoincrementable y clave primaria.
--      b. 'nombre': una cadena de texto para almacenar nombres de usuario.
--      c. 'email': una cadena de texto para almacenar correos electrónicos.
--      d. 'fecha_registro': una fecha y hora para registrar cuándo se añadió el usuario.
--   4. Utiliza el siguiente código SQL para llenar la tabla usuarios:

DELIMITER //

CREATE PROCEDURE GenerarDatos()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 10000 DO
    INSERT INTO usuarios (nombre, email, fecha_registro) VALUES 
    (CONCAT('Usuario', LPAD(i, 5, '0')), CONCAT('usuario', i, '@example.com'), NOW());
    SET i = i + 1;
  END WHILE;
END //

DELIMITER ;

CALL GenerarDatos();

DROP PROCEDURE IF EXISTS GenerarDatos;


--   Ejercicio 2: Consultas sin Índices
--   
--   1. Escribe y ejecuta una consulta para buscar usuarios por un campo que no sea 'id',
--      como 'nombre' o 'email'.
--   2. Utiliza el comando EXPLAIN para analizar el plan de ejecución de tu consulta.
--      Observa y toma nota del número de filas examinadas y el tiempo de ejecución.
--  

--   Ejercicio 3: Implementación de Índices
--   
--   1. Crea un índice en la columna que usaste para la consulta en la Parte 2.
--   2. Ejecuta nuevamente la misma consulta y usa EXPLAIN para analizar el nuevo
--      plan de ejecución. Compara los resultados con la consulta sin índice.
--  

--   Ejercicio 4: Índices Compuestos y su Impacto
--   
--   1. Si tu consulta inicial utiliza más de una columna, considera crear un índice
--      compuesto que incluya esas columnas.
--   2. Realiza consultas que utilicen el índice compuesto y analiza su rendimiento
--      con EXPLAIN.
--  
  

 



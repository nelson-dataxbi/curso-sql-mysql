-- Ejercicios para crear una base de datos
-- Crea una nueva base de datos con el nombre BANCO y las tablas necesarias para 
-- manejar un sistema bancario básico:
-- - Un cliente pueda tener varias cuentas 
-- - Una cuenta pueda tener varios clientes
-- - Una cuenta pueda tener varias tarjetas de crédito o débito asociadas 
-- - Se lleve el registro de los movimientos de las cuentas

-- Ejercicio 1: Creaa la base de datos

-- Ejercicio 2: Crea la tabla Cliente con las columnas: 
--  - cliente_id: clave primaria, auto incrmento
--  - nombre 
--  - direccion 
--  - telefono 
--  - email.


-- Ejercicio 3: Creaa la tabla Cuenta con las columnas:
-- - cuenta_id: clave primaria, auto incremento
-- - tipo: texto 
-- - saldo: decimal


-- Ejercicio 4: Crea la tabla para la relación entre Clientes y Cuentas (Muchos a Muchos)


-- Ejercicio 5: Crea la tabla Tarjeta con las columnas:
-- - tarjeta_id: clave primaria, auto incremento
-- - cuenta_id: clave foránea
-- - numero: texto
-- - fecha_expiracion
-- - cvv: texto
-- - tipo: enum ('credito', 'debito')


-- Ejercicio 6: Crea la tabla Movimiento con las columnas:
-- - movimiento_id: clave primaria, auto incremento
-- - cuenta_id: clave foránea
-- - tipo:  ENUM('deposito', 'retiro', 'pago')
-- - monto: decimal
-- - fecha


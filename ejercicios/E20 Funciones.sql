-- Ejemplos de funciones
-- usando la base de datos Northwind

use northwind;

-- Ejercicio 1: Función para contar clientes por país
DELIMITER //
CREATE FUNCTION CountCustomersByCountry(countryName VARCHAR(15))
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE customerCount INT;
    SELECT COUNT(*) INTO customerCount FROM Customer WHERE country = countryName;
    RETURN customerCount;
END //
DELIMITER ;

-- Ejercicio 2: Función para calcular el precio total de un pedido
DELIMITER //
CREATE FUNCTION CalculateOrderTotal(orderId INT)
RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE orderTotal DECIMAL(10, 2);
    SELECT SUM(unitPrice * quantity * (1 - discount)) INTO orderTotal
    FROM OrderDetail
    WHERE orderId = orderId;
    RETURN orderTotal;
END //
DELIMITER ;

-- Ejercicio 3: Función para obtener el nombre completo del empleado
DELIMITER //
CREATE FUNCTION GetEmployeeFullName(employeeId INT)
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    DECLARE fullName VARCHAR(50);
    SELECT CONCAT(firstname, ' ', lastname) INTO fullName FROM Employee WHERE employeeId = employeeId;
    RETURN fullName;
END //
DELIMITER ;

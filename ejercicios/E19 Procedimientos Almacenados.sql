-- Ejemplos de procedimientos almacenados 
-- usando la base de datos Northwind

use northwind;

-- Ejercicio 1: Procedimiento para agregar un nuevo cliente
DELIMITER //
CREATE PROCEDURE AddNewCustomer(
    IN companyName VARCHAR(40),
    IN contactName VARCHAR(30),
    IN contactTitle VARCHAR(30),
    IN address VARCHAR(60),
    IN city VARCHAR(15),
    IN region VARCHAR(15),
    IN postalCode VARCHAR(10),
    IN country VARCHAR(15),
    IN phone VARCHAR(24),
    IN fax VARCHAR(24)
)
BEGIN
    INSERT INTO Customer (companyName, contactName, contactTitle, address, city, region, postalCode, country, phone, fax) 
    VALUES (companyName, contactName, contactTitle, address, city, region, postalCode, country, phone, fax);
END //
DELIMITER ;

-- Ejercicio 2: Procedimiento para actualizar el stock de un producto
DELIMITER //
CREATE PROCEDURE UpdateProductStock(IN productId INT, IN newUnitsInStock SMALLINT)
BEGIN
    UPDATE Product SET unitsInStock = newUnitsInStock WHERE Product.productId = productId;
END //
DELIMITER ;

-- Ejercicio 3: Procedimiento para calcular el total de ventas de un empleado
DELIMITER //
CREATE PROCEDURE TotalSalesByEmployee(IN employeeId INT, OUT totalSales DECIMAL(10, 2))
BEGIN
    SELECT SUM(unitPrice * quantity * (1 - discount)) INTO totalSales
    FROM OrderDetail
    JOIN SalesOrder ON OrderDetail.orderId = SalesOrder.orderId
    WHERE SalesOrder.employeeId = employeeId;
END //
DELIMITER ;

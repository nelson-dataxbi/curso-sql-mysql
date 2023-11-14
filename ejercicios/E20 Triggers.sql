-- Ejemplos de triggers
-- usando la base de datos Northwind

use northwind;

-- Ejercicio 1: Trigger para actualizar el stock después de un pedido
DELIMITER //
CREATE TRIGGER AfterOrderInsert
AFTER INSERT ON OrderDetail FOR EACH ROW
BEGIN
    UPDATE Product
    SET unitsInStock = unitsInStock - NEW.quantity
    WHERE productId = NEW.productId;
END //
DELIMITER ;

-- Ejercicio 2: Trigger para verificar el stock antes de insertar en OrderDetail
DELIMITER //
CREATE TRIGGER BeforeOrderDetailInsert
BEFORE INSERT ON OrderDetail FOR EACH ROW
BEGIN
    DECLARE stock SMALLINT;
    SELECT unitsInStock INTO stock FROM Product WHERE productId = NEW.productId;
    IF stock < NEW.quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock for product';
    END IF;
END //
DELIMITER ;

-- Ejercicio 3: Trigger para registrar cambios en los detalles de los clientes
DELIMITER //
CREATE TRIGGER AfterCustomerUpdate
AFTER UPDATE ON Customer FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO CustomerAudit (custId, changeDescription, changeDate)
        VALUES (NEW.custId, CONCAT('Email changed from ', OLD.email, ' to ', NEW.email), NOW());
    END IF;
END //
DELIMITER ;

-- Ejercicio 4: Trigger para controlar la descontinuación de un producto
DELIMITER //
CREATE TRIGGER BeforeProductDiscontinue
BEFORE UPDATE ON Product FOR EACH ROW
BEGIN
    IF NEW.discontinued = 'Y' AND OLD.discontinued = 'N' THEN
        UPDATE OrderDetail
        SET discontinuedDate = NOW()
        WHERE productId = NEW.productId;
    END IF;
END //
DELIMITER ;

-- Ejercicio 5: Trigger para actualizar el total de un pedido después de cada inserción
DELIMITER //
CREATE TRIGGER AfterOrderDetailInsertOrUpdate
AFTER INSERT ON OrderDetail FOR EACH ROW
BEGIN
    UPDATE SalesOrder
    SET totalAmount = totalAmount + (NEW.unitPrice * NEW.quantity * (1 - NEW.discount))
    WHERE orderId = NEW.orderId;
END //
DELIMITER ;

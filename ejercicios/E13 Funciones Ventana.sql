-- Ejemplos de las funciones de ventanas
-- usando la base de datos Northwind

use northwind;

-- Ejercicio 1: Revise la siguiente consulta donde se usan las funciones COUNT() y 
-- SUM() junto a las instrucciones OVER, PARTTION BY y ORDER BY. 
-- Partiendo de dicha consulta, cree las siguiente columnas:
-- 1.1 Porcentaje de Venta sobre las ventas totales
-- 1.2 Porcentaje de Venta sobre las ventas de la categoría

SELECT 
  d.orderDetailId,
  c.categoryName,
  o.orderDate,
  COUNT(*) OVER () AS LineasTotales,
  COUNT(*) OVER (PARTITION BY c.categoryName) AS LineasTotalesCategoria,
  COUNT(*) OVER (PARTITION BY c.categoryName order by o.orderDate) AS LineasAcumuladasCategoria,
    d.unitPrice * d.quantity as Venta,
  SUM(d.unitPrice * d.quantity) OVER () AS VentasTotales,
  SUM(d.unitPrice * d.quantity) OVER (PARTITION BY c.categoryName) AS VentasTotalesCategoria,
  SUM(d.unitPrice * d.quantity) OVER (PARTITION BY c.categoryName order by o.orderDate) AS VentasAcumuladasCategoria
FROM OrderDetail d
JOIN SalesOrder o ON d.orderId = o.orderId
JOIN Product p ON d.productId = p.productId
JOIN Category c ON p.categoryId = c.categoryId;


-- Ejercicio 2: Cree una consulta que muestre la cantidad de productos por proveedor y 
-- la proporción que representa cada producto para su proveedor. Por ejemplo, si un
-- proveedor tiene 4 productos, la proporción de cada uno de los 4 productos es 0,25.


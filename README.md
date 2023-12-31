# Curso SQL

## Contenido
1. Consultas - SELECT
   1. Combinar - JOIN
   2. Anexar - UNION
2. Funciones
   1. Texto
   2. Fecha y hora
   3. Agregación
3. Subconsultas y CTE
4. Funciones de ventana
5. Modificar Datos - INSERT, UPDATE, DELETE
6. Modificar Estructura - CREATE, ALTER, DROP
7. Procedimientos almacenados
8. Triggers

## Diapositivas
  - [Diapositivas](presentaciones/Curso%20SQL%20Presentacion.pdf)

## Entorno de trabajo
- [Instalar MySQL](https://dev.mysql.com/downloads/mysql/)
  - Crear base de datos de ejemplo (sakila)
- [Instalar DBeaver](https://dbeaver.io/download/)
  - Conectarse a MySQL en localhost
  - [Ejecutar script SQL para crear la BD northwind](ejercicios/datos/northwind.sql)
  - [Ejecutar script SQL para crear la BD HR](ejercicios/datos/HR%20db.sql)
  - [Ejecutar script SQL para insertar datos en la BD HR](ejercicios/datos/HR%20datos.sql)

## Consultas - SELECT
- Ejercicios
  - [Explorar la base de datos Northwind](ejercicios/E01%20Explorar%20BD%20Northwind.sql)
  - [Explorar la base de datos Sakila](ejercicios/E02%20Explorar%20BD%20Sakila.sql)
  - [Explorar la base de datos HR](ejercicios/E03%20Explorar%20BD%20HR.sql)
  - [Funciones de Texto](ejercicios/E04%20Funciones%20Texto.sql)
  - [Funciones de Fecha y Hora](ejercicios/E05%20Funciones%20Fecha%20Hora.sql)
  - [Filtrado con WHERE](ejercicios/E06%20Filtrado%20WHERE.sql)
  - [Condicionales con CASE](ejercicios/E07%20CASE.sql)
  - [Funciones de Agregación](ejercicios/E08%20Funciones%20Agregacion.sql)
  - [Combinar tablas con JOIN](ejercicios/E09%20JOIN.sql)
  - [Anexar tablas con UNION](ejercicios/E10%20UNION.sql)

## Subconsultas y CTE
- Ejercicios
  - [Subconsutas](ejercicios/E11%20Subconsultas.sql)
  - [CTE](ejercicios/E12%20CTE.sql)

## Funciones de ventana
- Ejercicios
  - [Funciones de ventana con COUNT() y SUM()](ejercicios/E13%20Funciones%20Ventana.sql)
  - [Funciones de ventana con FIRST_VALUE(), ROW_NUMBER(), RANK() Y DENSE_RANK()](ejercicios/E14%20Funciones%20Ventana%202.sql)

## Modificar Datos
- Ejercicios
  - [Insertar, actualizar y borrar datos](ejercicios/E15%20Modificar%20Datos.sql)
  - [Ejemplo del uso de transacciones explícitas](ejercicios/E16%20Transacciones.sql)

## Modificar Estructura
- Ejercicios
  - [Crear una base de datos para manejar un banco](ejercicios/E17%20Modificar%20Estructura.sql)
  - [Ejemplos de Vistas](ejercicios/E18%20Vistas.sql)
  - [Ejemplos de Procedimientos Almacenados](ejercicios/E19%20Procedimientos%20Almacenados.sql)
  - [Ejemplos de Funciones](ejercicios/E20%20Funciones.sql)
  - [Ejemplos de Triggers](ejercicios/E20%20Triggers.sql)
  - [Transferir dinero entre cuentas bancarias](ejercicios/E22%20Banco.sql)

## Rendimiento
- Ejercicios
  - [Índices y plan de consulta](ejercicios/E23%20Rendimiento.sql)


-- Ejercicos con CASE 
-- usando la base de datos Sakila

use sakila;

-- Ejercicio 1: Clasificar películas según su duración
-- Categoriza las películas basado en su duración:
--      'Corta': menos de 60 min. 
--      'Media': entre 60 y 120 min.
--      'Larga': más de 120 min..
select
	title,
	case
		when length < 60 then 'Corta'
		when length >= 60
		and length <= 120 then 'Media'
		else 'Larga'
	end as DuracionCategoria
from
	film;

-- Ejercicio 2: Determinar tarifa de alquiler basada en clasificación
-- Establece un precio de alquiler basado en la clasificación (rating) de la película:
--  rating: 'G' precio: 1.99
--  rating: 'PG' precio: 2.99
--  rating: 'PG-13' precio: 3.99
--  rating: 'R' precio: 4.99
--  rating: 'NC-17' precio: 5.99
-- otros ratings: 3.99
-- 
select
	title,
	rating,
	case
		rating
        when 'G' then 1.99
		when 'PG' then 2.99
		when 'PG-13' then 3.99
		when 'R' then 4.99
		when 'NC-17' then 5.99
		else 3.99
	end as RentalRate
from
	film;


-- Ejercicio 4: Clasificar clientes en categorías según su volumen de compras.
-- Bronce: menor de 50
-- Plata: entre 50 y 100 
-- Oro:  mayor de 100

select
	customer_id,
	case
		when total_amount < 50 then 'Bronce'
		when total_amount between 50 and 100 then 'Plata'
		when total_amount > 100 then 'Oro'
	end as CategoriaCliente
from
	(
	select
		customer_id,
		SUM(amount) as total_amount
	from
		payment
	group by
		customer_id) as customer_payments;


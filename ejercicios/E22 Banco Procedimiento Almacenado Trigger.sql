-- Ejercicio para practicar procedimiento almacenados y triggers
-- Crear un procedimeinto almacenado para transferir dinero entre dos cuentas
-- Crear un trigger que controle que no se pueda transferir si no hay 
-- suficiente salfdo en la cuenta de origen.

insert into cliente (nombre,direccion,telefono,email)
values
	('Ana Martinez López','Calle ...','11222','ana.martinez@example.com'),
	('Jorge Dominguez','Ora calle ...','6512334','jorge.dominguez@example.com');
	
select * from cliente c 

insert into cuenta (tipo,saldo)
values 
	('ahorro',5.00),
	('ahorro',1000.00);

select * from cuenta c 

insert into clientecuenta (cliente_id, cuenta_id)
values
	(1,1),
	(2,2);

select 
*
from clientecuenta c 
join cliente c2 on c.cliente_id = c2.cliente_id 
join cuenta c3 on c.cuenta_id = c3.cuenta_id 

delimiter //

create procedure HacerTransferencia(
					in id_cuenta_origen int,
					in id_cuenta_destino int,
					in importe decimal(12,2))
begin
	-- Se crean dos movimientos
	insert into movimiento (cuenta_id,tipo,monto)
	values 
		(id_cuenta_origen,'retiro',-1 * importe),
		(id_cuenta_destino,'pago',importe); 
	
	-- se actualiza el saldo en la cuenta origen
	update cuenta
	set
		saldo = saldo - importe
	where cuenta_id = id_cuenta_origen;

	-- se actualiza el saldo en la cuenta destino
	update cuenta
	set
		saldo = saldo + importe
	where cuenta_id = id_cuenta_destino;
end//

create trigger AvisoSalgoNegativo before insert on movimiento
for each row 
begin 
	if new.tipo = 'retiro' then 
		set @saldo = (select saldo from cuenta where cuenta_id = new.cuenta_id);
		if @saldo - abs(new.monto) < 0 then
			SIGNAL SQLSTATE '45000'
        	SET MESSAGE_TEXT = 'Saldo insuficiente en la cuenta de origen';
		end if;
	end	if;
end//

delimiter ;

select * from movimiento m;
select * from cuenta c ;

call HacerTransferencia(2,1,500)
call HacerTransferencia(1,2,50)
call HacerTransferencia(1,2,256)

select * from movimiento m;
select * from cuenta c ;
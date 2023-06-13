/* 
Actualizar registro - Listo
Eliminar registro - Listo
Insertar registro - Listo
*/
update Pedidos set precio = 200 where id = 1;

delete from Especificacion_Pedidos where id = 4;

insert Especificacion_Pedidos(pedido_id,producto_id) values (3,1);
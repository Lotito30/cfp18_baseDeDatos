/* 
Cambiar nombre de columna - Listo
Cambiar nombre de tabla - Listo
agregar columna - Listo
borrar column - Listo
*/
show databases;
use sqlpracticas;

show tables;

alter table Pedidos
rename column total to precio,
add column ubicacion varchar(255);

alter table Detalles_Pedido
rename Especificacion_Pedidos;

alter table Especificacion_Pedidos
drop column cantidad;






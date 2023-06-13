/* 
Ordenar registros - Listo
Agrupar registros - Listo
Calcular campos (+.-.*./) -
Condicionar registro (where) - Listo
Unir tablas (join)
Agrupar registros y condicionar(having)
suma,porcentaje y cantidad (suma(),avg(),count())
Left join y Right join
*/
select * from Pedidos;
select * from Especificacion_Pedidos;

-- Ordenar registros
select * from Pedidos order by precio asc;

-- Agrupar registros
select pedido_id,count(*) from Especificacion_Pedidos
group by pedido_id;

-- Calcular campos
select (precio + 10) 'Sumando 10' from Especificacion_Pedidos
join Pedidos on Pedidos.id = Especificacion_Pedidos.pedido_id
where Especificacion_Pedidos.id = 2;

-- Condicionar registro (where) 
select * from  Especificacion_Pedidos
where pedido_id = 3;

select sum(precio) as 'Total de venta' from Pedidos;
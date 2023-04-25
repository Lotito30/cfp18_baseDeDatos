
select * from aviones;
select * from vuelos;
select * from pasajeros;
select * from personal;
select * from piloto_personal;
select * from pilotos;
select * from personas;

-- el precio minimo
select min(precio) from vuelos;
-- el precio maximo
select max(precio) from vuelos;
-- personas con funcion join para traerlo desde pasajero
select * from personas join pasajeros on pasajeros.pasaporte = personas.pasaporte;
-- Ciudad y nro de vuelo
select ciudad, nro from vuelos;
-- hora de llegada y salida de vuelo
select horaSalida, horaLlegada from vuelos;
-- horas de vuelos
select horaLlegada, horaSalida, format((horaLlegada - horaSalida) * 0.01, 2) as horasTotales from vuelos;
-- cuantos viajan hasta venezuela
select count(pasaporte), ciudad from pasajeros join vuelos on pasajeros.nro_vuelo = vuelos.nro
where ciudad = "caracas";
-- average
select format(avg(precio),2) as promedio from vuelos where ciudad = "caracas";
-- crear variable
set @minPrecio = (select min(precio) from vuelos);
set @maxPrecio = (select max(precio) from vuelos);
-- buscar valor con variable
select * from vuelos where precio = @minPrecio;
-- consultar between con variables
SELECT * FROM vuelos
where precio BETWEEN @minPrecio AND @maxPrecio;

-- consultando valores de vuelo
select v.nro as nroDeVuelo ,v.fecha, v.horaSalida, v.ciudad, a.hangar, p.pasaporte, p.nombre, p.apellido 
from vuelos v
join pasajeros psj on v.nro = psj.nro_vuelo
join personas p on psj.pasaporte = p.pasaporte
join aviones a on v.nro = a.nro_vuelo;

-- Muestra las dos tablas si no aparece en la tabla derecha retorna null el campo de la izquierda
select p.pasaporte,v.fecha,v.nro, v.ciudad,v.horaSalida from vuelos v
left join pasajeros p on v.nro = p.nro_vuelo;
 
 -- muestra solo las coincidencias entre las dos tablas
 select p.pasaporte,v.fecha,v.nro, v.ciudad,v.horaSalida from vuelos v
 left join pasajeros p on v.nro = p.nro_vuelo;
 
 -- precio total de una ciudad
 select sum(precio), ciudad from vuelos 
 where ciudad = "caracas";
 
 -- Sirve para hacer funciones max(),min(),avg(). Busca los campos que estan dentro de la condicion 
 select sum(precio), ciudad from vuelos
 group by ciudad having sum(precio) < (select avg(precio) from vuelos where ciudad="santiago");

select * from aviones;
select * from vuelos;
select * from pasajeros;
select * from personal;
select * from piloto_personal;
select * from pilotos;
select * from personas;

-- consulta condicional
select ciudad, precio from vuelos where precio >= 100000; 
select ciudad, precio from vuelos where precio <= 200000; 
-- dos ciudades
select ciudad, precio from vuelos where ciudad in ("Caracas", "Nueva York");
-- datos del pasajero
select distinct * from personas join pasajeros on pasajeros.pasaporte = personas.pasaporte;
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
where ciudad = "Caracas";
-- average
select format(avg(precio),2) as promedio from vuelos where ciudad = "Caracas";
 
select count(pasaporte) as cantidad, ciudad from pasajeros join vuelos on pasajeros.nro_vuelo = vuelos.nro
where ciudad = "Caracas";
-- calcular descuentos 20%
select ciudad, precio, format((precio * 0.80),2) descuento20  from vuelos;
-- descuento mas barato
select ciudad, precio, min(precio*0.8) as descuento20 from vuelos;
-- calcular average
select count(ciudad) as cantidad, ciudad, format(avg(precio),2) as average from vuelos where ciudad="Caracas";
-- group by
select count(ciudad) as cantidad,ciudad, sum(precio), format((precio * 0.80),2) as descuento20  from vuelos group by ciudad ;
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
 right join pasajeros p on v.nro = p.nro_vuelo;
 
 -- precio total de una ciudad
 select sum(precio), ciudad from vuelos 
 where ciudad = "Caracas";
 
 -- Sirve para hacer funciones max(),min(),avg(). Busca los campos que estan dentro de la condicion 
 select sum(precio), ciudad from vuelos
 group by ciudad having sum(precio) < (select avg(precio) from vuelos where ciudad="Caracas");



select * from aviones;
select * from vuelos;
select * from pasajeros;
select * from personal;
select * from piloto_personal;
select * from pilotos;
select * from personas;


-- vuelo minimo
select ciudad,min(precio) from vuelos; 
-- vuelo maximo
select ciudad, max(precio) from vuelos; 
-- consulta condicional
select ciudad, precio from vuelos where precio >= 100000; 
select ciudad, precio from vuelos where precio <= 200000; 
-- dos ciudades
select ciudad, precio from vuelos where ciudad in ("Caracas", "Nueva York");
-- datos del pasajero
select distinct * from personas join pasajeros on pasajeros.pasaporte = personas.pasaporte;
-- Ciudad y nro de vuelo
select ciudad, nro from vuelos;
-- hora de llegada y salida de vuelo
select horaSalida, horaLlegada from vuelos;
-- horas de vuelos
select horaLlegada, horaSalida, format((horaLlegada - horaSalida) * 0.01, 2) as horasTotales from vuelos;
-- cuantos viajan hasta venezuela
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


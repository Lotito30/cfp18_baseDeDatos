
select * from aviones;
select * from vuelos;
select * from pasajeros;
select * from personal;
select * from piloto_personal;
select * from pilotos;
select * from personas;

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
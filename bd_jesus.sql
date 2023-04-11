create database if not exists aerolinea;
-- show databases;
use aerolinea;

drop table if exists pasajeros;
drop table if exists vuelos;
drop table if exists personal;
drop table if exists pilotos;
drop table if exists aviones;
drop table if exists piloto_personal;

create table if not exists pasajeros(
	pasaporte int primary key, 
    nro_vuelo int
);

create table if not exists vuelos(
	nro int primary key auto_increment, 
    fecha date,
    horaSalida time,
    horaLlegada time,
    ciudad varchar(50),
    nro_avion int
);

create table if not exists personal(
	nroLegajo int primary key, 
    nombre varchar(25),
    nro_vuelo int,
    areaAsignada enum("azafata","soporte","limpieza","piloto","mecanico")
);

create table if not exists pilotos(
	nroLegajo int primary key, 
    nro_avion int
);

create table if not exists aviones(
	nro int primary key, 
    modelo varchar(50),
    fabricante varchar(50),
    capacidad int,
    hangar varchar(12),
    nro_vuelo int
);

create table if not exists piloto_personal(
	id int primary key,
	nroLegajo_piloto int , 
    nroLegajo_personal int
);
-- show tables;

/*
	Relaciones entre tablas
	Hacer la FK de las tablas
    
    1) Alterar la tabla pasajeros
    2) Agregar FK a la variable "nro_vuelo"
    3) Referenciar  la fk a la variable "nro" de la tabla vuelos
*/

alter table pasajeros
add foreign key (nro_vuelo)
references vuelos (nro);

alter table aviones
add foreign key (nro_vuelo)
references vuelos (nro);

alter table pilotos
add foreign key (nro_avion)
references aviones (nro);

alter table personal
add foreign key (nro_vuelo)
references vuelos (nro);

alter table piloto_personal
add foreign key (nroLegajo_piloto)
references pilotos (nroLegajo);

alter table piloto_personal
add foreign key (nroLegajo_personal)
references personal (nroLegajo);






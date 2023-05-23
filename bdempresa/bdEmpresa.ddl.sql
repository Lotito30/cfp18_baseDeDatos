drop database if exists empresa;
create database empresa;

use empresa;
 create table departamentos(
	codigo int primary key auto_increment,
    descripcion varchar (255)
);
create table consultoras(
	nroLegajo int primary key,
	nroCuit int,
    razonSocial varchar(255)
);
create table empleados(
	nroLegajo int primary key,
    nombre varchar(50),
    apellido varchar(50),
    nroDepartamento_codigo int,
    tipo enum("efectivo","contratado")
);

create table efectivos select nroLegajo from empleados where tipo = "efectivo";

create table contratados select nroLegajo from empleados where tipo = "contratado";


alter table efectivos
modify column nroLegajo int primary key,
add column salario double;

alter table contratados
modify column nroLegajo int primary key,
add column precioPorHora double,
add column precioPorHoraExtra double,
add column horasComun int,
add column horasExtras int,
add column  nroCuit int;










drop database if exists empresa;
create database empresa;

use empresa;
 create table departamentos(
	codigo int primary key auto_increment,
    descripcion varchar (255)
);
create table consultoras(
	nroCuit int primary key,
    razonSocial varchar(255)
);
create table empleados(
	nroLegajo int primary key,
    nombre varchar(50),
    apellido varchar(50),
    nroDepartamento int,
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
add column horaExtra double,
add column  nroCuit int;


/* create table contratados(
	nroLegajo int primary key,
    nroCuit int,
    precioPorHora double,
    horaExtra double
);

create table efectivos(
	nroLegajo int primary key,
    salario double
);

alter table contratados
add foreign key(nroLegajo)
references empleados(nroLegajo);

alter table efectivos
add foreign key(nroLegajo)
references empleados(nroLegajo);

alter table empleados
add foreign key(nroDepartamento)
references departamentos(codigo);

alter table contratados
add foreign key(nroCuit)
references consultoras(nroCuit);

*/









drop database if exists empresa;
create database empresa;

use empresa;

create table empleados(
	nroLegajo int primary key,
    nombre varchar(50),
    apellido varchar(50),
    nroDepartamento int
);
create table contratados(
	nroLegajo int primary key,
    nroCuit int,
    precioPorHora double,
    horaExtra double
);

create table efectivos(
	nroLegajo int primary key,
    salario double
);

create table departamentos(
	codigo int primary key auto_increment,
    descripcion varchar (255)
);
create table consultoras(
	nroCuit int primary key,
    razonSocial varchar(255)
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











-- Insertar valores en departamentos
insert into departamentos (descripcion) value ("finanzas");
insert into departamentos (descripcion) value ("marketing");
insert into departamentos (descripcion) value ("RRHH");
insert into departamentos (descripcion) value ("produccion");
insert into departamentos (descripcion) value ("ventas");

-- Insertar valores en consultoras
insert into consultoras(nroCuit, razonSocial) values  (12345,"Kl23");
insert into consultoras(nroCuit, razonSocial) values (54321,"lk32");
insert into consultoras(nroCuit, razonSocial) values (13579,"zk46");

-- Insertar valores en empleados
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento, tipo) values 
(2356,"Jesus","Dominguez",1,"efectivo");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento,tipo) values 
(2146,"Miguel","Lotito",2,"efectivo");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento,tipo) values 
(2256,"Angel","Ruiz",3,"efectivo");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento,tipo) values 
(2636,"Miguel","Dominguez",4,"contratado");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento,tipo) values 
(1936,"Angel","Dominguez",1,"contratado");


insert into efectivos (nroLegajo) select nroLegajo from empleados where tipo = "efectivo";

insert into efectivos (salario) values (10000);


select * from efectivos;
select * from contratados;
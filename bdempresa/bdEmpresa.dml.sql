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
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento) values 
(2356,"Jesus","Dominguez",1);
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento) values 
(2146,"Miguel","Lotito",2);
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento) values 
(2256,"Angel","Ruiz",3);
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento) values 
(2636,"Miguel","Dominguez",4);
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento) values 
(1936,"Angel","Dominguez",1);

-- Insertar valores en contratados
insert into contratados(nroLegajo,nroCuit,precioPorHora,horaExtra) values (2356,12345,1000,2000);
insert into contratados(nroLegajo,nroCuit,precioPorHora,horaExtra) values (2146,13579,1200,2146);
insert into contratados(nroLegajo,nroCuit,precioPorHora,horaExtra) values (1936,54321,1400,2300);

-- Insertar valores en efectivos
insert into efectivos(nroLegajo,salario) values (2256,150000);
insert into efectivos(nroLegajo,salario) values (2636,120000);

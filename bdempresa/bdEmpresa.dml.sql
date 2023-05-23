-- Insertar valores en departamentos
insert into departamentos (descripcion) value ("finanzas");
insert into departamentos (descripcion) value ("marketing");
insert into departamentos (descripcion) value ("RRHH");
insert into departamentos (descripcion) value ("produccion");
insert into departamentos (descripcion) value ("ventas");

-- Insertar valores en empleados
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento_codigo, tipo) values 
(2356,"Jesus","Dominguez",1,"efectivo");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento_codigo,tipo) values 
(2146,"Miguel","Lotito",2,"efectivo");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento_codigo,tipo) values 
(2256,"Angel","Ruiz",3,"efectivo");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento_codigo,tipo) values 
(2636,"Miguel","Dominguez",4,"contratado");
insert into empleados (nroLegajo,nombre,apellido,nroDepartamento_codigo,tipo) values 
(1936,"Angel","Dominguez",1,"contratado");

-- Insertar valores en consultoras
insert into consultoras(nroLegajo,nroCuit, razonSocial) values  (2636,12345,"Kl23");
insert into consultoras(nroLegajo,nroCuit, razonSocial) values (1936,54321,"lk32");


insert into efectivos (nroLegajo,salario) 
select nroLegajo, 
case
	when departamentos.descripcion = "finanzas" then 5000
    when departamentos.descripcion = "marketing" then 4000
    when departamentos.descripcion = "RRHH" then 3000
    when departamentos.descripcion = "produccion" then 2000
    else 1000
end
from empleados
join departamentos on departamentos.codigo = empleados.nroDepartamento_codigo
where tipo = "efectivo";

insert into contratados (nroLegajo,precioPorHora,precioPorHoraExtra,horasComun,horasExtras,nroCuit) 
select empleados.nroLegajo, 
	case
		when departamentos.descripcion = "finanzas" then 1300
		when departamentos.descripcion = "marketing" then 1200
		when departamentos.descripcion = "RRHH" then 1100
		when departamentos.descripcion = "produccion" then 1000
		else 900
	end,
    case
		when departamentos.descripcion = "finanzas" then 1500
		when departamentos.descripcion = "marketing" then 1400
		when departamentos.descripcion = "RRHH" then 1300
		when departamentos.descripcion = "produccion" then 1200
		else 1100
	end,
    200,
    12,
    consultoras.nroCuit
from empleados
join departamentos on departamentos.codigo = empleados.nroDepartamento_codigo
join consultoras on consultoras.nroLegajo = empleados.nroLegajo
where tipo = "contratado";

select * from efectivos;
select * from contratados;
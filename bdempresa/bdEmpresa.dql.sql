select * from departamentos;
select * from consultoras;
select * from empleados;
select * from contratados;
select * from efectivos;

select count(empleados.nroLegajo) as Cantidad_de_empleados_en_contratado from empleados
join contratados on contratados.nroLegajo = empleados.nroLegajo;

select empleados.* from empleados
join contratados on contratados.nroLegajo = empleados.nroLegajo;

select count(empleados.nroLegajo) as Cantidad_de_empleados_en_efectivo from empleados
join efectivos on efectivos.nroLegajo = empleados.nroLegajo;

select empleados.* from empleados
join efectivos on efectivos.nroLegajo = empleados.nroLegajo;

select empleados.*,departamentos.descripcion from empleados
join departamentos on departamentos.codigo = empleados.nroDepartamento;
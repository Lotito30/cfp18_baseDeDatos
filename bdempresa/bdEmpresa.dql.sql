/*
	- mostrar las descripciones de los departamentos de los empleados efectivos
    
    - mostrar las descripciones de los departamentos de los empleados contratados
    
	- cuantos empleados efectibvos y contratados hay en la empresa (group by)
    
    - cual es el promedio del salario de los empleados en efectivo
    
    - cuanto ganan los empleados contratados por mes sin horas extras
    
    - cuanto ganan los empleados contratados por mes si trabajan todas las horas extras
    
    - cual es el promedio del salario de los empleados contratados que cumplen sus horas extras
    
    - a los empleados efectivos se le aumento un 20% de su salario
    
    - a los empleados contratados se le aumento 20% de lo que ganan en el mes por hora comun y 18% por hora extra
    
    agregar consultas extras

 */

 -- mostrar las descripciones de los departamentos de los empleados efectivos
 
select e.tipo, d.descripcion from empleados e
join departamentos d on d.codigo = e.nroDepartamento_codigo
where e.tipo = "efectivo";

-- mostrar las descripciones de los departamentos de los empleados contratados
select e.tipo, d.descripcion from empleados e
join departamentos d on d.codigo = e.nroDepartamento_codigo
where e.tipo = "contratado";

-- cuantos empleados efectivos y contratados hay en la empresa (group by)
select tipo, count(*) as Total from empleados group by tipo;

-- cual es el promedio del salario de los empleados en efectivo
select format(avg(salario),2) as 'Promedio Salario efectivos' from efectivos;

-- cuanto ganan los empleados contratados por mes sin horas extras
select e.nroLegajo,format(c.precioPorhora * c.horasComun,2) 'Salario contratados',d.descripcion from empleados e 
join departamentos d on d.codigo = e.nroDepartamento_codigo
join contratados c on c.nroLegajo = e.nroLegajo;

-- cuanto ganan los empleados contratados por mes si trabajan todas las horas extras
select e.nroLegajo,format((c.precioPorhora * c.horasComun),2) as 'Salario sin horas extras',format(((c.precioPorhora * c.horasComun) + (c.precioPorHoraExtra * c.horasExtras)),2) 'Salario con horas extras',d.descripcion from empleados e 
join departamentos d on d.codigo = e.nroDepartamento_codigo
join contratados c on c.nroLegajo = e.nroLegajo;

-- cual es el promedio del salario de los empleados contratados que cumplen sus horas comun
select format(avg(c.precioPorhora * c.horasComun),2) 'Promedio de contratados de horas comun' from contratados c;

-- cual es el promedio del salario de los empleados contratados que cumplen sus horas extras
select format(avg((c.precioPorhora * c.horasComun) + (c.precioPorHoraExtra * c.horasExtras)),2) 'Promedio de contratados con horas extras' from contratados c;

-- Cuanto seria el salario mensual del efectivo si se le aumenta el 20%? 
select salario as 'Sin aumento', format((salario * 1.20),2) as 'Salario aumentado 20%' from efectivos;

-- traer el empleado contratado, su departamento y el nombre de la consultora
select contratados.nroLegajo,e.nombre, e.apellido, e.tipo, d.descripcion, c.razonSocial from empleados e
join departamentos d on d.codigo = e.nroDepartamento_codigo
join contratados on contratados.nroLegajo = e.nroLegajo
join consultoras c on c.nroCuit = contratados.nroCuit;

-- Cuanto seria el salario mensual si se le aumenta el 20% de lo que ganan en el mes por hora comun y 18% por hora extra
select nroLegajo,format(((c.precioPorhora * c.horasComun)) + ((c.precioPorHoraExtra * c.horasExtras)),2) as 'Sin aumento',
format(((c.precioPorhora * c.horasComun)*1.20)+ ((c.precioPorHoraExtra * c.horasExtras)*1.18),2) as 'Con aumento' 
from contratados c;


select * from contratados;
select * from efectivos;


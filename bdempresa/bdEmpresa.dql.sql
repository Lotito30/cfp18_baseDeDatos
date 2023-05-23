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
select e.nroLegajo,format(((c.precioPorhora * c.horasComun) + (c.precioPorHoraExtra * c.horasExtras)),2) 'Salario con horas extras',d.descripcion from empleados e 
join departamentos d on d.codigo = e.nroDepartamento_codigo
join contratados c on c.nroLegajo = e.nroLegajo;

-- cual es el promedio del salario de los empleados contratados que cumplen sus horas extras
select format(avg((c.precioPorhora * c.horasComun) + (c.precioPorHoraExtra * c.horasExtras)),2) 'Promedio de contratados con horas extras' from contratados c;

-- Cuanto seria el salario mensual del efectivo si se le aumenta el 20%? 
select format(((salario * 0.20) + salario),2) as 'Salario aumentado 20%' from efectivos;

-- Cuanto seria el salario mensual i se le aumenta el 20% de lo que ganan en el mes por hora comun y 18% por hora extra

select 
format(
(
((c.precioPorhora * c.horasComun)*0.20)+(c.precioPorhora * c.horasComun)) 
+ 
((((c.precioPorHoraExtra * c.horasExtras)*0.18)+(c.precioPorHoraExtra * c.horasExtras))
),2
) as 'Salario mensual de contratados con horas extras' 
from contratados c;

select * from contratados;
select * from efectivos;



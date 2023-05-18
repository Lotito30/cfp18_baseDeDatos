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
join departamentos d on d.codigo = e.nroDepartamento
where e.tipo = "efectivo";

-- mostrar las descripciones de los departamentos de los empleados contratados
select e.tipo, d.descripcion from empleados e
join departamentos d on d.codigo = e.nroDepartamento
where e.tipo = "contratado";

-- cuantos empleados efectivos y contratados hay en la empresa 
select tipo, count(*) as Total from empleados group by tipo;

-- cual es el promedio del salario de los empleados en efectivo
select format(avg(e.salario),2) as 'Promedio Salario efectivos' from efectivos e;

-- cuanto ganan los empleados contratados por mes sin horas extras
select e.nroLegajo,format(c.precioPorhora * 208,2) 'Salario contratados',d.descripcion from empleados e 
join departamentos d on d.codigo = e.nroDepartamento
join contratados c on c.nroLegajo = e.nroLegajo;

-- cuanto ganan los empleados contratados por mes si trabajan todas las horas extras
select e.nroLegajo,format(((c.precioPorhora * 208) + (c.horaExtra * 26)),2) 'Salario con horas extras',d.descripcion from empleados e 
join departamentos d on d.codigo = e.nroDepartamento
join contratados c on c.nroLegajo = e.nroLegajo;

-- cual es el promedio del salario de los empleados contratados que cumplen sus horas extras
select format(avg((c.precioPorhora * 208) + (c.horaExtra * 26)),2) 'Promedio de contratados con horas extras' from empleados e
join contratados c on c.nroLegajo = e.nroLegajo;

-- a los empleados efectivos se le aumento un 20% de su salario

update efectivos
set salario = salario + (salario * 0.20)
where nroLegajo > 0;

-- a los empleados contratados se le aumento 20% de lo que ganan en el mes por hora comun y 18% por hora extra

update contratados
set precioPorHora = precioPorHora + (precioPorHora * 0.20), horaextra = horaExtra + (horaExtra * 0.18)
where nroLegajo > 0;

select * from contratados;
select * from efectivos;



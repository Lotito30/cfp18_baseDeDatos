select* from instructores;
select* from cursos;
select* from alumnos;
select* from alumnos_cursos;

-- cuantos alumnos, cursos e instructores existen.
select 
  (select distinct count(email) from alumnos) as 'Cantidad alumnos',
  (select distinct count(codigo) from cursos) as 'Cantidad cursos',
  (select distinct count(documento) from instructores) as 'Cantidad instructores';

-- la cantidad de curso que esta dando cada instructor
select ROW_NUMBER() over (order by instructores.nombre asc) as N°,count(instructor_documento) as Cantidad, instructores.nombre as Nombre from cursos
join instructores on instructores.documento = cursos.instructor_documento
group by instructor_documento;

-- saber que instructor esta en que curso
select ROW_NUMBER() over (order by instructores.nombre asc) as N°,instructores.nombre 'Nombre Instructor',cursos.nombre from instructores
join cursos on instructores.documento = cursos.instructor_documento
order by instructores.nombre asc;

-- cuantos curso hace cada alumno
select alumnos.nombre ,count(alumno_email) as 'Cantidad de cursos por alumno' from alumnos_cursos
join alumnos on alumnos.email = alumnos_cursos.alumno_email
group by alumno_email;

-- cuanto es el precio del curso teniendo en cuenta precio por hora * duracion en horas
select ROW_NUMBER() over (order by cursos.nombre asc) as N°,nombre, format(cuota*duracion,2) as 'Precio Total' from cursos;

-- traer los alumnos de un curso y su instructor
select ROW_NUMBER() over (order by alumnos.nombre asc) as N°, alumnos.nombre as 'Alumnos', cursos.nombre as 'Cursos', instructores.nombre as 'Instructores' from alumnos_cursos
join cursos on cursos.codigo = alumnos_cursos.curso_codigo
join alumnos on alumnos.email = alumnos_cursos.alumno_email
join instructores on instructores.documento = cursos.instructor_documento;

-- nombre del curso y quien lo dicta con mas alumnos

set @cursoMasAlumnos := (SELECT MAX(contador) FROM (
    SELECT COUNT(*) AS contador 
    FROM cursos
    JOIN alumnos_cursos ON alumnos_cursos.curso_codigo = cursos.codigo
    GROUP BY cursos.nombre
) AS subconsulta);

select cursos.nombre, instructores.nombre, @cursoMasAlumnos as 'Cantidad de alumnos' from cursos
join alumnos_cursos on alumnos_cursos.curso_codigo = cursos.codigo
join instructores on cursos.instructor_documento = instructores.documento
group by cursos.nombre having count(*) = @cursoMasAlumnos; 


select* from instructores;
select* from cursos;
select* from alumnos;
select* from alumnos_cursos;

-- la cantidad de curso que esta dando cada instructor
select ROW_NUMBER() over (order by instructores.nombre asc) as N°,count(instructor_documento) as Cantidad, instructores.nombre as Nombre from cursos
join instructores on instructores.documento = cursos.instructor_documento
group by instructor_documento;

-- Mostrar los alumnos con su curso
select ROW_NUMBER() over (order by alumnos.nombre asc) as N°,alumnos.nombre as 'Alumno',alumnos_cursos.*,cursos.nombre as 'Curso' from alumnos_cursos
join alumnos on alumnos.email = alumnos_cursos.alumno_email
join cursos on cursos.codigo = alumnos_cursos.curso_codigo;

-- saber que instructor esta en que curso
select ROW_NUMBER() over (order by instructores.nombre asc) as N°,instructores.nombre,cursos.nombre from instructores
join cursos on instructores.documento = cursos.instructor_documento
order by instructores.nombre asc;

-- cuantos instructores hay
select count(documento) as 'Cantidad de profesores' from instructores;

-- cuanto es el precio del curso
select ROW_NUMBER() over (order by cursos.nombre asc) as N°,nombre, format(cuota*duracion,2) as 'Precio Total' from cursos;

-- traer los alumnos de un curso y su instructor
select ROW_NUMBER() over (order by alumnos.nombre asc) as N°, alumnos.nombre as 'Alumno', cursos.nombre as 'Curso', instructores.nombre as 'Instructor' from alumnos_cursos
join cursos on cursos.codigo = alumnos_cursos.curso_codigo
join alumnos on alumnos.email = alumnos_cursos.alumno_email
join instructores on instructores.documento = cursos.instructor_documento;


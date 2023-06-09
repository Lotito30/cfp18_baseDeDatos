drop database if exists capacitacion;

create database capacitacion;

use capacitacion;

-- Crear la tabla de instructores
CREATE TABLE instructores (
  documento INT PRIMARY KEY,
  nombre VARCHAR(50),
  telefono VARCHAR(20)
);

-- Crear la tabla de cursos
CREATE TABLE cursos (
  codigo INT PRIMARY KEY,
  nombre VARCHAR(50),
  cuota DECIMAL(10, 2),
  duracion INT,
  instructor_documento INT,
  FOREIGN KEY (instructor_documento) REFERENCES instructores(documento)
);

-- Crear la tabla de alumnos
CREATE TABLE alumnos (
  email VARCHAR(255) PRIMARY KEY,
  nombre VARCHAR(50),
  telefono VARCHAR(20)
);

-- Crear la tabla de alumnos_cursos
CREATE TABLE alumnos_cursos (
  id int auto_increment primary key,
  alumno_email VARCHAR(255),
  curso_codigo INT,
  FOREIGN KEY (alumno_email) REFERENCES alumnos(email),
  FOREIGN KEY (curso_codigo) REFERENCES cursos(codigo)
);
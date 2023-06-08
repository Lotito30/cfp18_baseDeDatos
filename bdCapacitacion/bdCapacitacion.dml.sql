-- Insertar instructores
INSERT INTO instructores (documento, nombre, telefono) VALUES
  (12345678, 'Pablo Perez', '1123456789'),
  (87654321, 'Daniel Lopez', '1198765432'),
  (45678912, 'Antonio Gomez', '1154698732'),
  (85296321, 'Maria Valenzuela', '1158742369');

-- Insertar cursos
INSERT INTO cursos (codigo, nombre, cuota, duracion, instructor_documento) VALUES
  (1258, 'Introducción a UNIX', 1000.00, 4, 12345678),
  (2854, 'Programación Java', 1500.00, 4, 87654321),
  (3465, 'Bases de Datos', 1600.00, 8, 45678912),
  (7542, 'Desarrollo Web', 1500.00, 16, 85296321),
  (9854, 'POO', 1800.00, 12, 12345678);

-- Insertar alumnos
INSERT INTO alumnos (email, nombre, telefono) VALUES
  ('mariana@example.com', 'Mariana Gomes', ''),
  ('juan@example.com', 'Juan Rodriguez', '1234567890'),
  ('laura@example.com', 'Laura Martinez', '9876543210'),
  ('carlos@example.com', 'Carlos Ramirez', '5555555555');

-- Insertar alumnos_cursos
INSERT INTO alumnos_cursos (alumno_email, curso_codigo) VALUES
  ('mariana@example.com', 1258),
  ('mariana@example.com', 2854),
  ('juan@example.com', 3465),
  ('laura@example.com', 1258),
  ('carlos@example.com', 7542),
  ('carlos@example.com', 9854),
  ('juan@example.com', 9854),
  ('carlos@example.com', 9854);

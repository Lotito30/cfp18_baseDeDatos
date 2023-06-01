-- Insertar instructores
INSERT INTO instructores (documento, nombre, telefono) VALUES
  (12345678, 'Pablo Perez', '1123456789'),
  (87654321, 'Daniel Lopez', '1198765432'),
  (45678912, 'Antonio Gomwez', '1154698732'),
  (85296321, 'Maria Valenzuela', '1158742369');

-- Insertar cursos
INSERT INTO cursos (codigo, nombre, cuota, duracion, instructor_documento) VALUES
  (1, 'Introducción a UNIX', 100.00, 4, 12345678),
  (2, 'Programación Java', 150.00, 4, 87654321),
  (3, 'Bases de Datos', 200.00, 8, 45678912),
  (4, 'Desarrollo Web', 180.00, 12, 85296321),
  (5, 'POO', 280.00, 12, 12345678);

-- Insertar alumnos
INSERT INTO alumnos (email, nombre, telefono) VALUES
  ('mariana@example.com', 'Mariana Gomes', ''),
  ('juan@example.com', 'Juan Rodriguez', '1234567890'),
  ('laura@example.com', 'Laura Martinez', '9876543210'),
  ('carlos@example.com', 'Carlos Ramirez', '5555555555');

-- Insertar alumnos_cursos
INSERT INTO alumnos_cursos (alumno_email, curso_codigo) VALUES
  ('mariana@example.com', 1),
  ('mariana@example.com', 2),
  ('juan@example.com', 3),
  ('laura@example.com', 1),
  ('carlos@example.com', 4),
  ('carlos@example.com', 5),
  ('juan@example.com', 5);

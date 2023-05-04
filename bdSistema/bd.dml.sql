-- Insertar registros en la tabla sistemas
INSERT INTO sistemas (nivel) VALUES ('bajo'), ('medio'), ('alto');

-- Insertar registros en la tabla programas
INSERT INTO programas (freq_ejec) VALUES ('baja'), ('media'), ('alta');

-- Insertar registros en la tabla archivos
INSERT INTO archivos (modos) VALUES ('Input'), ('Output'), ('Input-Output');

-- Insertar registros en la tabla sistemas_programas
INSERT INTO sistemas_programas (nivel_sistema, freq_ejec) VALUES
('bajo', 'baja'), 
('medio', 'media'), 
('alto', 'alta'),
('bajo', 'media'),
('bajo', 'media'),
('medio', 'alta'),
('medio', 'baja');

-- Insertar registros en la tabla programas_archivos
INSERT INTO programas_archivos (freq_ejec, modos) VALUES 
('baja', 'Input'), 
('media', 'Output'), 
('alta', 'Input-Output');
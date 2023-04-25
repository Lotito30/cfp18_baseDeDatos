-- INGRESO REGISTROS DE "VUELOS"

INSERT INTO vuelos 
(fecha, horaSalida, horaLlegada, ciudad, precio) 
VALUES ('2023-03-29', 1330, 1530, 'MDQ',23000.222);
INSERT INTO vuelos 
(fecha, horaSalida, horaLlegada, ciudad, precio) 
VALUES ('2023-03-30', 1330, 1630, 'bariloche',25000.201);
INSERT INTO vuelos 
(fecha, horaSalida, horaLlegada, ciudad, precio) 
VALUES ('2023-03-31', 1530, 1830, 'santiago',26000.80);
INSERT INTO vuelos 
(fecha, horaSalida, horaLlegada, ciudad, precio) 
VALUES ('2023-05-20', 1430, 2045, 'caracas',36000.80);
INSERT INTO vuelos 
(fecha, horaSalida, horaLlegada, ciudad, precio) 
VALUES ('2023-06-21', 1330, 2145, 'caracas',39000.80);
INSERT INTO vuelos 
(fecha, horaSalida, horaLlegada, ciudad, precio) 
VALUES ('2023-05-20', 1330, 2130, 'lima',16000.90);

-- INGRESO REGISTRO DE AVIONES

insert into aviones
(nro,modelo,fabricante,capacidad,hangar,nro_vuelo)
values (12,"420","pampa",300,"A2",1);
insert into aviones
(nro,modelo,fabricante,capacidad,hangar,nro_vuelo)
values (13,"4201","Aeropa",300,"A1",2);
insert into aviones
(nro,modelo,fabricante,capacidad,hangar,nro_vuelo)
values (14,"4202","pampa",300,"A3",3);

-- ingreso registro pasajeros 
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (2345672, 2);
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (2678983, 4);
INSERT INTO pasajeros (pasaporte, nro_vuelo) VALUES (5674323, 5);

-- ingreso registro personal

INSERT INTO personal 
(nroLegajo, nombre, nro_vuelo, areaAsignada) 
VALUES (234, 'fulanita', 1, 'piloto');
INSERT INTO personal 
(nroLegajo, nombre, nro_vuelo, areaAsignada) 
VALUES (2342, 'steven', 3, 'piloto');
INSERT INTO personal 
(nroLegajo, nombre, nro_vuelo, areaAsignada) 
VALUES (2341, 'coentrao', 2, 'piloto');

-- ingreso registro pilotos

INSERT INTO pilotos (nroLegajo, nro_avion) 
VALUES (234, 12);
INSERT INTO pilotos (nroLegajo, nro_avion) 
VALUES (2342, 13);
INSERT INTO pilotos (nroLegajo, nro_avion) 
VALUES (2341, 14);

-- ingreso registro piloto_personal

INSERT INTO piloto_personal
 (nroLegajo_piloto, nroLegajo_personal) 
 VALUES (234, 234);
INSERT INTO piloto_personal
 (nroLegajo_piloto, nroLegajo_personal) 
 VALUES (2342, 2342);
INSERT INTO piloto_personal
 (nroLegajo_piloto, nroLegajo_personal) 
 VALUES (2341, 2341);

INSERT INTO personas (pasaporte, nombre,apellido,tel,email) 
VALUES (5674323, "jesus","dominguez",123244,"lpfijdid@fdlpg.com");
INSERT INTO personas (pasaporte, nombre,apellido,tel,email) 
VALUES (2345672, "jesus","lotito",123212,"lpfij@fdlpg.com");
INSERT INTO personas (pasaporte, nombre,apellido,tel,email) 
VALUES (2678983, "miguel","dominguez",123412,"lpfid@fdlpg.com");
/* 
	/* 
		UPDATE
	-- update personal
	update personal set nombre = "carla" where nroLegajo = 234;

	-- update aviones
	update aviones set fabricante = "Airbus" where nro = 12;
	update aviones set modelo = "A-777" where nro = 13;
	/* 
		DELETE
	-- delete aviones
	DELETE FROM aviones WHERE nro = 12;
*/



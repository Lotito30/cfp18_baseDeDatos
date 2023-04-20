-- INGRESO REGISTROS DE "VUELOS"

insert into vuelos (fecha, horaSalida, horaLlegada, ciudad, precio)
values ('2023-05-21', 0900, 1200, 'Caracas', 135000.50);
insert into vuelos (fecha, horaSalida, horaLlegada, ciudad, precio)
values ('2023-05-22', 1400, 1720, 'Londres', 165000.75);
insert into vuelos (fecha, horaSalida, horaLlegada, ciudad, precio)
values ('2023-05-23', 1300, 1515, 'Caracas', 185000.00);
insert into vuelos (fecha, horaSalida, horaLlegada, ciudad, precio)
values ('2023-05-24', 1115, 1400, 'Nueva York', 250000.25);
insert into vuelos (fecha, horaSalida, horaLlegada, ciudad, precio)
values ('2023-05-25', 0700, 1000, 'Caracas', 120000.00);
insert into vuelos (fecha, horaSalida, horaLlegada, ciudad, precio)
values ('2023-05-26', 1600, 1900, 'Madrid', 200000.50);

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



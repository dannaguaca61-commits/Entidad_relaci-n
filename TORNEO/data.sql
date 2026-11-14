--ingresamos valores a la tabla fichas
INSERT INTO torneo.fichas(Id_ficha, codigo_ficha, programa_ficha, jornada_ficha)
VALUES (1,'3411909','ADSO','Diurna'),
       (2,'257689','Gestion Administrativa', 'Tarde'),
	   (3,'4321583','Enfermeria','Noche'),
	   (4,'6476397','ADSO','Noche');


--ingresamos valores a la tabla canchas 
INSERT INTO torneo.canchas(Id_cancha, nombre_cancha, ubicacion_cancha, capacidad_cancha)
VALUES (4,'Principal','	Sede principal','22'),
       (5,'Sitetica','Bloque B', '40'),
	   (6,'Pequeña','Piso C','30'),
	   (7,'Sintetica 2','Cancha limones','40');


--ingresamos valores a la tabla arbitros
INSERT INTO torneo.arbitros(Id_arbitro, nombre_arbitro, documento_arbitro, celular_arbitro)
VALUES (8,'Manuel','1056987567','322'),
       (9,'Osber','258963456', '340'),
	   (10,'Dilson','1059668436','330'),
	   (11,'Osmer','256987156','340');


--ingresamos valores a la tabla equipos
INSERT INTO torneo.equipos(Id_equipo, nombre_equipo, color_camisa, Id_ficha)
VALUES (12,'Tiburones','Roja',1),
       (13,'Planada FC','Amarilla',2),
	   (14,'Bermeja B','Negra',3),
	   (15,'La brasa','Azul',4);


--ingresamos valores a la tabla jugadores
INSERT INTO torneo.jugadores(Id_jugador, nombre_jugador, documento_jugador, fecha_nacimiento, numero_camisa, Id_equipo)
VALUES (16,'Diego','1025986459','12/12/1999','11',12),
       (17,'Lisandro','1456987523','03/12/1997','08',13),
	   (18,'Oscar','159874236','21/02/1998','10',14),
	   (19,'Esteban','1256987456','11/01/2000','03',15);


--ingresamos valores a la tabla partidos
INSERT INTO torneo.partidos(Id_partido, fecha_partido, hora_partido, fase_partido, Id_cancha)
VALUES (20,'05/12/2027','06:00','equipos',5),
       (21,'06/12/2027','06:00','Cuartos',6),
	   (22,'07/12/2027','07:30','Equipos',7),
	   (23,'07/12/2027','08:10','Final',4);


--ingresamos valores a la tabla asistencias
INSERT INTO torneo.asistencias(Id_asistencia, fecha_asistencia, hora_asistencia,  Id_partido, Id_arbitro)
VALUES (24,'05/12/2027','06:00',20,8),
       (25,'06/12/2027','06:00',21,9),
	   (26,'07/12/2027','07:30',22,10),
	   (27,'07/12/2027','08:10',23,11);


--ingresamos valores a la tabla participaciones
INSERT INTO torneo.participaciones(Id_participacion, tarjeta_participacion, tiempo_participacion, Id_jugador, Id_partido)
VALUES (28,'Amarilla','01:00',16,20),
       (29,'Azul','01:00',17,21),
	   (30,'Amarilla','00:30:00',18,22),
	   (31,'Amarilla','00:40:00',19,23);
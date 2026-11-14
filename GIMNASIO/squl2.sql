--ingresamos datos a la tabla plan
INSERT INTO gimnasio.plan (Id_plan, Nombre_plan, Duracion_plan, Precio_plan)
     VALUES (1, 'Mensual', '1',50000),
	        (2, 'Trimestral', '3',150000),
			(3, 'Anual', '12',600000);
			
--ingresamos datos a la tabla entrenador
INSERT INTO gimnasio.entrenador (Id_entrenador, Documento_entrenador, Nombre_entrenador, Especialidad_entrenador)
      VALUES (4,'1059', 'David', 'Rumba'),
	         (5,'1056', 'Saray', 'Spinning'),
			 (6,'1032', 'Oscar', 'Funcional');

--ingresamos datos a la tabla dependiente socio
INSERT INTO gimnasio.socio (Id_socio, Documento_socio, Nombre_socio, Celular_socio, Fecha_ingreso,Id_plan)
      VALUES (7,'1061', 'Maira', '3126450651', '21/08/2026',1),
	         (8,'1052', 'Saray', '3225511469', '14/05/2026',2),
			 (9,'1064', 'Oscar', '3146958745', '31/01/2026',3),

--ingresamos datos a la tabla dependiente clase
INSERT INTO gimnasio.clase (Id_clase, Tipo_clase, Id_entrenador)
      VALUES (10,'rumba',4),
	         (11,'spinning',5),
			 (12,'funcional',6);

--ingresamos datos a la tabla dependiente tarjeta 
INSERT INTO gimnasio.tarjeta (Id_tarjeta, Codigo_tarjeta, Fecha_vencimiento, Id_socio)
       VALUES (13,'cd3','12/12/2027',7),
	          (14,'bs2','15/03/2027',8),
			  (15,'cd8','05/03/2027',9);
			  
--ingresamos datos a la tabla con dependencia multiple asistencia
INSERT INTO gimnasio.asistencia (Id_asistencia,Fecha_asistencia, Hora_asistencia, Id_socio, Id_clase)
       VALUES (16,'12/11/2026','2:00',7,10),
	          (17,'13/11/2026','5:00',8,11),
			  (18,'13/11/2026','8:00',9,12);





			 

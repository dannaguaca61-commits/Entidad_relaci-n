--ingresamos datos a la tabla categorias
INSERT INTO restaurante.categorias(Id_categoria, entrada, platos_fuertes, bebidas)
     VALUES (1,'Empanadas','Bandeja Paisa','Jugo de mora'),
            (2,'Arepa con queso','Pollo asado','Jugo de lula'),
			(3,'Sandwiches','Bandeja Paisa','Jugo de mora'),
			(4,'Deditos de queso','Costillas BBQ','Jugo de piña');

--ingresamos datos a la tabla clientes

INSERT INTO restaurante.clientes(Id_cliente,nombre_cliente,cedula_cliente,celular_cliente, direccion_cliente, barrio_cliente)
     VALUES (5,'Elizabeth','2578','315658789','calle 5 #12','Valencia'),
            (6,'Juan','1026','312545632','calle 2 #20','Samanes'),
			(7,'Edwin','1059','3125822567', 'calle 4 #3','Jardin'),
			(8,'Yoreli','2546','322543676','Calle 8 #6','Bosques');

--ingresamos datos a la tabla domiciliarios

INSERT INTO restaurante.domiciliarios(Id_domiciliario,nombre_domiciliario,apellido_domiciliario,celular_domiciliario)
     VALUES (9,'Lisbeth','Ruiz','315658685'),
            (10,'Jhoan','Montoya','322545632'),
			(11,'Arlen','Ossa','3125999567'),
			(12,'Viviana','Realpe','378943676');


--ingresamos datos a la tabla platos

INSERT INTO restaurante.platos (Id_plato, nombre_plato, precio_actual, Id_categoria)
     VALUES (13,'Pinchos','3000','1'),
            (14,'Sandwiches','2000','3'),
			(15,'Gelatina','2000','2'),
			(16,'Brownies','5000','4');


--ingresamos datos a la tabla motos

INSERT INTO restaurante.motos (Id_moto, placa_moto, modelo_moto,vencimiento_SOAT, Id_domiciliario)
     VALUES (17,'BRT24H','2016','2027/12/03',9),
            (18,'248G4I','2015','2027/11/02',10),
			(19,'MTR54C','2026','12/12/2027' ,11),
			(20,'DBR67U','2013','2027/02/02',12);
			
			
--ingresamos datos a la tabla pedidos

INSERT INTO restaurante.pedidos (Id_pedido, cantidad_pedido, estado_pedido,Id_cliente, Id_domiciliario)
     VALUES (21,'1','Entregado',5,9),
            (22,'2','En preparación',6,10),
			(23,'5','Recibido',7,11),
			(24,'3','Entregado',8,12);


--ingresamos datos a la tabla detalles 

INSERT INTO restaurante.detalles (Id_detalle, cantidad, Id_plato, Id_pedido)
     VALUES (25,'1',13,21),
            (26,'2',14,22),
			(27,'5',15,23),
			(28,'3',16,24);


	 
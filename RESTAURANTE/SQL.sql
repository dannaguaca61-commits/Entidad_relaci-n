--vamos a eliminar el esquema base o por defecto
DROP SCHEMA public;

--creamos el esquema para nuestra base de datos
CREATE SCHEMA IF NOT EXISTS restaurante;

--creamos las tablas para las entidades independientes
CREATE TABLE IF NOT EXISTS restaurante.categorias(
Id_categoria INT UNIQUE NOT NULL Primary key,
entrada VARCHAR(20) NOT NULL,
platos_fuertes Varchar(20) NOT NULL,
bebidas Varchar (15)
);

--creamos la segunda tabla para entidad independiente
CREATE TABLE IF NOT EXISTS restaurante.clientes(
Id_cliente INT UNIQUE NOT NULL primary key,
cedula_cliente VARCHAR (10) NULL,
nombre_cliente VARCHAR (20) NOT NULL,
celular_cliente VARCHAR (10) NOT NULL,
direccion_cliente Varchar(15) NOT NULL,
barrio_cliente VARCHAR (10) NOT NULL
);

--creamos la tercera tabla para la entidad independiente
CREATE TABLE IF NOT EXISTS restaurante.domiciliarios(
Id_domiciliario INT UNIQUE NOT NULL primary key,
nombre_domiciliario VARCHAR(10) NOT NULL,
apellido_domiciliario VARCHAR(20) NOT NULL,
celular_domiciliario VARCHAR(10)
);
--creamos tabla para la entidad dependiente
 CREATE TABLE IF NOT EXISTS restaurante.platos(
 Id_plato INT UNIQUE NOT NULL Primary key,
 nombre_plato VARCHAR (20) NOT NULL,
 precio_actual DECIMAL (10,2) NOT NULL,
 Id_categoria INT NOT NULL,
 CONSTRAINT Fk_categoria FOREIGN KEY (Id_categoria) REFERENCES restaurante.categorias(Id_categoria)
 );

--creamos tabla para la segunda entidad dependiente
CREATE TABLE IF NOT EXISTS restaurante.motos(
Id_moto INT UNIQUE NOT NULL primary key,
placa_moto VARCHAR (10) NOT NULL,
modelo_moto INT NOT NULL,
vencimiento_SOAT DATE NOT NULL,
Id_domiciliario INT NOT NULL,
CONSTRAINT Fk_domiciliario FOREIGN KEY (Id_domiciliario) REFERENCES restaurante.domiciliarios(Id_domiciliario)
 );

-- creamos tabla para la entidad con dependencia multiple
CREATE TABLE IF NOT EXISTS restaurante.pedidos(
Id_pedido INT UNIQUE NOT NULL primary key,
cantidad_pedido INT NOT NULL,
estado_pedido VARCHAR (20) NOT NULL,
Id_cliente INT NOT NULL,
Id_domiciliario INT NOT NULL,
CONSTRAINT Fk_cliente FOREIGN KEY (Id_cliente) REFERENCES restaurante.clientes(Id_cliente),
CONSTRAINT Fk_categoria FOREIGN KEY (Id_categoria) REFERENCES restaurante.categorias(Id_categoria)
);

--creamos tabla para la segunda entidad con dependencia multiple
CREATE TABLE IF NOT EXISTS restaurante.detalles(
Id_detalle INT UNIQUE NOT NULL primary key,
cantidad INT NOT NULL,
Id_plato INT NOT NULL,
Id_pedido INT NOT NULL,
CONSTRAINT Fk_plato FOREIGN KEY (Id_plato) REFERENCES restaurante.platos(Id_plato),
CONSTRAINT Fk_pedido FOREIGN KEY (Id_pedido) REFERENCES restaurante.pedidos(Id_pedido)
);


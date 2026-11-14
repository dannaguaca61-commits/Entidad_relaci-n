--vamos a eliminar el esquema base o por defecto
DROP SCHEMA public;

--creamos esquema para nuestra base de datos
CREATE SCHEMA IF NOT EXISTS gimnasio;

--creamos las tablas para las entidades independientes
CREATE TABLE IF NOT EXISTS gimnasio.plan(
Id_plan INT UNIQUE NOT NULL primary key,
Nombre_plan VARCHAR(50) NOT NULL,
Duracion_plan INT NOT NULL,
Precio_plan DECIMAL (10,2) NOT NULL
);

--creamos la segunda tabla independiente 
CREATE TABLE IF NOT EXISTS gimnasio.entrenador(
Id_entrenador INT UNIQUE NOT NULL primary key,
Especialidad_entrenador VARCHAR(50) NOT NULL,
Nombre_entrenador VARCHAR (10) NOT NULL,
Documento_entrenador VARCHAR (10) NOT NULL
);

--creamos la tabla para la entidad dependiente socio
CREATE TABLE IF NOT EXISTS gimnasio.socio(
Id_socio INT UNIQUE NOT NULL primary key,
Documento_socio VARCHAR(10) NOT NULL,
Nombre_socio VARCHAR(10) NOT NULL,
Celular_socio VARCHAR(10) NULL,
Fecha_ingreso DATE NOT NULL,
Id_plan INT NOT NULL,

CONSTRAINT Fk_plan FOREIGN KEY (Id_plan) REFERENCES gimnasio.plan(Id_plan)
);

--creamos la segunda tabla para la entidad dependiente clase
CREATE TABLE IF NOT EXISTS gimnasio.clase(
Id_clase INT UNIQUE NOT NULL Primary key,
Tipo_clase VARCHAR(50) NOT NULL,
Id_entrenador INT NOT NULL,

CONSTRAINT Fk_entrenador FOREIGN KEY (Id_entrenador) REFERENCES gimnasio.entrenador(Id_entrenador)
);

--creamos la tercera tabla para la entidad dependiente tarjeta
CREATE TABLE IF NOT EXISTS gimnasio.tarjeta(
Id_tarjeta INT UNIQUE NOT NULL Primary key,
Codigo_tarjeta VARCHAR(30)NOT NULL,
Fecha_vencimiento DATE NOT NULL,
Id_socio INT NOT NULL,

CONSTRAINT Fk_socio FOREIGN KEY (Id_socio) REFERENCES gimnasio.socio(Id_socio)
);

--creamos la tabla para la entidad asistencia con  dependencia multiple
CREATE TABLE IF NOT EXISTS gimnasio.asistencia(
Id_asistencia INT UNIQUE NOT NULL Primary key,
Fecha_asistencia DATE NOT NULL,
Hora_asistencia TIME NOT NULL,
Id_socio INT NOT NULL,
Id_clase INT NOT NULL,

CONSTRAINT Fk_socio FOREIGN KEY (Id_socio) REFERENCES gimnasio.socio(Id_socio),
CONSTRAINT Fk_clase FOREIGN KEY (Id_clase) REFERENCES gimnasio.clase(Id_clase)
);
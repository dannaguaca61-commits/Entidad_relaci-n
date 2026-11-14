----vamos a eliminar el esquema base o por defecto
DROP SCHEMA public;

--creamos el esquema para nuestra base de datos
CREATE SCHEMA IF NOT EXISTS torneo;

--creamos las tablas para las entidades independientes
CREATE TABLE IF NOT EXISTS torneo.fichas(
Id_ficha INT UNIQUE NOT NULL PRIMARY KEY,
codigo_ficha VARCHAR(15)NOT NULL,
programa_ficha VARCHAR(30) NOT NULL,
jornada_ficha VARCHAR(20) NOT NULL
);

--creamos tablas para la segunda entidad independiente
CREATE TABLE IF NOT EXISTS torneo.canchas(
Id_cancha INT UNIQUE NOT NULL PRIMARY KEY,
nombre_cancha VARCHAR(20)NOT NULL,
ubicacion_cancha VARCHAR(15) NOT NULL,
capacidad_cancha INT NOT NULL
);

--creamos tablas para la tercera entidad independiente
CREATE TABLE IF NOT EXISTS torneo.arbitros(
Id_arbitro INT UNIQUE NOT NULL PRIMARY KEY,
documento_arbitro VARCHAR(10)NOT NULL,
nombre_arbitro VARCHAR(20) NOT NULL,
celular_arbitro VARCHAR(10)NOT NULL
);

--creamos tablas para las entidades dependientes
CREATE TABLE IF NOT EXISTS torneo.equipos(
Id_equipo INT UNIQUE NOT NULL PRIMARY KEY,
nombre_equipo VARCHAR(20)NOT NULL,
color_camisa VARCHAR(20) NOT NULL,
Id_ficha INT NOT NULL,

CONSTRAINT Fk_ficha FOREIGN KEY (Id_ficha) REFERENCES torneo.fichas(Id_ficha)
);

--creamos tabla para la segunda entidad dependiente
CREATE TABLE IF NOT EXISTS torneo.jugadores(
Id_jugador INT UNIQUE NOT NULL PRIMARY KEY,
nombre_jugador VARCHAR(20)NOT NULL,
documento_jugador VARCHAR(10) NOT NULL,
fecha_nacimiento DATE  NULL,
numero_camisa INT NOT NULL,
Id_equipo INT NOT NULL,

CONSTRAINT Fk_equipo FOREIGN KEY (Id_equipo) REFERENCES torneo.equipos(Id_equipo)
);

--creamos tablas para la tercer entidad dependiente
CREATE TABLE IF NOT EXISTS torneo.partidos(
Id_partido INT UNIQUE NOT NULL PRIMARY KEY,
fecha_partido DATE NOT NULL,
hora_partido TIME NOT NULL,
fase_partido VARCHAR(15) NOT NULL,
Id_cancha INT NOT NULL,

CONSTRAINT Fk_cancha FOREIGN KEY (Id_cancha) REFERENCES torneo.canchas(Id_cancha)
);

--creamos tablas para las entidades con dependencia multiple
CREATE TABLE IF NOT EXISTS torneo.asistencias(
Id_asistencia INT UNIQUE NOT NULL PRIMARY KEY,
fecha_asistencia DATE NOT NULL,
hora_asistencia TIME NOT NULL,
Id_partido INT NOT  NULL,
Id_arbitro INT NOT NULL,

CONSTRAINT Fk_partido FOREIGN KEY (Id_partido) REFERENCES torneo.partidos(Id_partido),
CONSTRAINT Fk_arbitro FOREIGN KEY (Id_arbitro) REFERENCES torneo.arbitros(Id_arbitro)
);

--creamos tabla para la segunda entidad con dependencia multiple
CREATE TABLE IF NOT EXISTS torneo.participaciones(
Id_participacion INT UNIQUE NOT NULL PRIMARY KEY,
tarjeta_participacion VARCHAR(15) NOT NULL,
tiempo_participacion TIME NOT NULL,
Id_jugador INT NOT  NULL,
Id_partido INT NOT NULL,

CONSTRAINT Fk_jugador FOREIGN KEY (Id_jugador) REFERENCES torneo.jugadores(Id_jugador),
CONSTRAINT Fk_partido FOREIGN KEY (Id_partido) REFERENCES torneo.partidos(Id_partido)
);
CREATE TYPE genero AS ENUM('Masculino', 'Femenino', 'Otro');
	
CREATE TABLE alumnos(
	alumno_id SERIAL PRIMARY KEY,
	alumno_nombre VARCHAR(55) NOT NULL,
	alumno_apellido VARCHAR(55) NOT NULL,
	alumno_edad INT NOT NULL,
	alumno_correo TEXT UNIQUE NOT NULL,
	alumno_genero GENERO DEFAULT('Otro') 
);

CREATE TABLE carreras(
	carrera_id SERIAL PRIMARY KEY,
	carrera_nombre VARCHAR(55) NOT NULL UNIQUE,
	carrera_duracion INT
);

CREATE TABLE materias(
	materia_id SERIAL PRIMARY KEY,
	materia_nombre VARCHAR(55) NOT NULL UNIQUE,
	materia_creditos INT DEFAULT 0
);

CREATE TABLE profesores(
	profesor_id SERIAL PRIMARY KEY,
	profesor_nombre VARCHAR(55) NOT NULL,
	profesor_correo TEXT UNIQUE NOT NULL,
	profesor_genero GENERO DEFAULT('Otro')
);
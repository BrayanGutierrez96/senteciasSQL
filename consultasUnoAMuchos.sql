-- RELACION ENTRE UNO A MUCHOS CON ALUMNOS Y CARRERAS

ALTER TABLE alumnos
	ADD COLUMN carrera_id INT REFERENCES carreras(carrera_id);

UPDATE alumnos
	SET carrera_id = 1
	WHERE alumno_id = 1 OR alumno_id = 3 OR alumno_id = 5 OR alumno_id =7;

UPDATE alumnos
	SET carrera_id = 2
	WHERE alumno_id = 2 OR alumno_id = 4 OR alumno_id = 6 OR alumno_id =8;

UPDATE alumnos
	SET carrera_id = 3
	WHERE alumno_id = 9 OR alumno_id = 10 OR alumno_id =11 OR alumno_id =12;

UPDATE alumnos
	SET carrera_id = 4
	WHERE alumno_id = 13 OR alumno_id = 14 OR alumno_id = 5 OR alumno_id =15;

UPDATE alumnos
	SET carrera_id = 5
	WHERE alumno_id = 16;

--Relacion de uno a muchos con inner join
SELECT 
	alumno_nombre,
	carrera_nombre
FROM alumnos as al
INNER JOIN carreras as ca
ON al.carrera_id = ca.carrera_id;

--Filtrar la consulta por nombres de estudiantes
SELECT 
	alumno_nombre,
	carrera_nombre
FROM alumnos as al
INNER JOIN carreras as ca
ON al.carrera_id = ca.carrera_id
WHERE alumno_nombre LIKE'M%';

--agrupamos por carreras y contamos cuantos estuantes hay por carrera
SELECT 
	carrera_nombre as "nombre de la carrera",
	COUNT(alumno_nombre) as "cantidad de alumnos"
FROM alumnos as al
INNER JOIN carreras as ca
ON al.carrera_id = ca.carrera_id
GROUP BY "nombre de la carrera";







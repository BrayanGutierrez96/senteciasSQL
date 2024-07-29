ALTER TABLE carreras
	ADD COLUMN  carrera_duracion INT NOT NULL;


INSERT INTO carreras(carrera_nombre, carrera_duracion)
	VALUES
('Ingeniería en Sistemas', 4),
('Psicología', 5),
('Medicina', 6),
('Derecho', 5),
('Arquitectura', 5);


SELECT * FROM carreras;

DELETE FROM carreras
	WHERE carrera_id BETWEEN 6 AND 20;
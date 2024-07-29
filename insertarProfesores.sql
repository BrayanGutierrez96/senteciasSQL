ALTER TABLE profesores
	ADD COLUMN profesor_titulo TEXT DEFAULT('Lic.');

ALTER TABLE profesores
	ADD COLUMN profesor_apellido TEXT NOT NULL;

INSERT INTO profesores( profesor_titulo, profesor_nombre, profesor_apellido, profesor_correo, profesor_genero )
	VALUES
	('Dr.', 'Alberto', 'Martínez', 'alberto.martinez@example.com', 'Masculino'),
('Lic.', 'Beatriz', 'González', 'beatriz.gonzalez@example.com', 'Femenino'),
('Ing.', 'Carlos', 'Ramírez', 'carlos.ramirez@example.com', 'Masculino'),
('Dra.', 'Diana', 'López', 'diana.lopez@example.com', 'Femenino'),
('Mtra.', 'Elena', 'Torres', 'elena.torres@example.com', 'Femenino'),
('Lic.', 'Francisco', 'Pérez', 'francisco.perez@example.com', 'Masculino');

SELECT 
	profesor_id as id,
	profesor_titulo as "titulo profesional",
	profesor_nombre as nombre,
	profesor_apellido as apellido,
	profesor_correo as correo,
	profesor_genero as genero
	FROM profesores;
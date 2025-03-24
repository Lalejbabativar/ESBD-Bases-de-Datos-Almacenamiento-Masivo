-- Insertar datos en Tipo_Pelicula
INSERT INTO Tipo_Pelicula (Genero) VALUES
('Acción'), ('Comedia'), ('Drama'), ('Ciencia Ficción'), ('Terror'),
('Aventura'), ('Romance'), ('Suspenso'), ('Animación'), ('Documental');

-- Insertar datos en Peliculas
INSERT INTO Peliculas (Titulo, Cod_Tipo) VALUES
('Duro de Matar', 1), ('Toy Story', 9), ('Titanic', 7), ('Matrix', 4), ('El Padrino', 3),
('Jurassic Park', 6), ('Interestelar', 4), ('El Exorcista', 5), ('Forrest Gump', 3), ('Avatar', 4);

-- Insertar datos en Actor
INSERT INTO Actor (Nombre_Corto, Nombre_Real, Fecha_Nac) VALUES
('Bruce Willis', 'Walter Bruce Willis', '1955-03-19'),
('Tom Hanks', 'Thomas Jeffrey Hanks', '1956-07-09'),
('Leonardo DiCaprio', 'Leonardo Wilhelm DiCaprio', '1974-11-11'),
('Keanu Reeves', 'Keanu Charles Reeves', '1964-09-02'),
('Marlon Brando', 'Marlon Brando Jr.', '1924-04-03'),
('Chris Pratt', 'Christopher Michael Pratt', '1979-06-21'),
('Matthew McConaughey', 'Matthew David McConaughey', '1969-11-04'),
('Linda Blair', 'Linda Denise Blair', '1959-01-22'),
('Robin Wright', 'Robin Gayle Wright', '1966-04-08'),
('Zoe Saldaña', 'Zoë Yadira Saldaña-Perego', '1978-06-19');

-- Insertar datos en Peli_Actor
INSERT INTO Peli_Actor (Cod_Pelicula, Cod_Actor) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Insertar datos en Cassette
INSERT INTO Cassette (Formato, Cod_Pelicula) VALUES
('VHS', 1), ('DVD', 2), ('Blu-ray', 3), ('DVD', 4), ('VHS', 5),
('Blu-ray', 6), ('DVD', 7), ('VHS', 8), ('Blu-ray', 9), ('DVD', 10);

-- Insertar datos en Clientes
INSERT INTO Clientes (Nombre, Apellido, Telefono, Direccion) VALUES
('Juan', 'Pérez', '123456789', 'Calle 1 #2-3'),
('Ana', 'Gómez', '987654321', 'Avenida 4 #5-6'),
('Carlos', 'López', '321654987', 'Carrera 7 #8-9'),
('Laura', 'Martínez', '456789123', 'Diagonal 10 #11-12'),
('Pedro', 'Ramírez', '654987321', 'Transversal 13 #14-15'),
('Sofía', 'Fernández', '159357258', 'Calle 16 #17-18'),
('Diego', 'Rodríguez', '753951456', 'Carrera 19 #20-21'),
('Camila', 'Torres', '852963741', 'Avenida 22 #23-24'),
('Andrés', 'Mendoza', '369258147', 'Calle 25 #26-27'),
('Valeria', 'Ortiz', '147852369', 'Carrera 28 #29-30');

-- Insertar datos en Alquiler
INSERT INTO Alquiler (Cod_Cliente, Fecha_Alquiler, Fecha_Devolucion) VALUES
(1, '2025-03-01', '2025-03-10'),
(2, '2025-03-02', '2025-03-11'),
(3, '2025-03-03', '2025-03-12'),
(4, '2025-03-04', '2025-03-13'),
(5, '2025-03-05', '2025-03-14'),
(6, '2025-03-06', '2025-03-15'),
(7, '2025-03-07', '2025-03-16'),
(8, '2025-03-08', '2025-03-17'),
(9, '2025-03-09', '2025-03-18'),
(10, '2025-03-10', '2025-03-19');

-- Insertar datos en Cassette_Alquiler
INSERT INTO Cassette_Alquiler (Cod_Cassette, Cod_Alquiler) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);
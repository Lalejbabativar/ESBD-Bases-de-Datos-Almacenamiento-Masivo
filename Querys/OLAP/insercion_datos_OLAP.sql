-- Insertar datos en la dimensión tiempo con festividades colombianas
INSERT INTO dim_tiempo (anio, mes, dia, semana, dia_nombre, festividad) VALUES
(2024, 2, 14, 7, 'Miércoles', 'San Valentín'),
(2024, 3, 19, 12, 'Martes', 'Día del Hombre'),
(2024, 3, 8, 10, 'Viernes', 'Día de la Mujer'),
(2024, 3, 24, 13, 'Domingo', 'Semana Santa'),
(2024, 4, 27, 17, 'Sábado', 'Día del Niño'),
(2024, 5, 12, 19, 'Domingo', 'Día de la Madre'),
(2024, 6, 16, 24, 'Domingo', 'Día del Padre'),
(2024, 7, 20, 29, 'Sábado', 'Día de la Independencia'),
(2024, 10, 31, 44, 'Jueves', 'Halloween'),
(2024, 12, 24, 52, 'Martes', 'Navidad');

-- Insertar datos en la dimensión cliente
INSERT INTO dim_cliente (nombre, apellido, telefono, direccion, tipo_cliente) VALUES
('Juan', 'Pérez', '3112233445', 'Calle 123', 'Frecuente'),
('María', 'Gómez', '3223344556', 'Carrera 45', 'Ocasional'),
('Carlos', 'López', '3005566778', 'Avenida Siempre Viva', 'Frecuente'),
('Laura', 'Ramírez', '3156677889', 'Calle 78', 'Nuevo'),
('David', 'Fernández', '3119988776', 'Carrera 12', 'Frecuente'),
('Andrea', 'Martínez', '3226655443', 'Avenida 10', 'Ocasional'),
('Santiago', 'Torres', '3003322110', 'Calle 90', 'Frecuente'),
('Paula', 'Rojas', '3159900112', 'Carrera 50', 'Nuevo'),
('Diego', 'Mendoza', '3101122334', 'Calle 45', 'Ocasional'),
('Sofía', 'Herrera', '3227766554', 'Avenida 5', 'Frecuente');

-- Insertar datos en la dimensión película
INSERT INTO dim_pelicula (titulo, genero, anio_estreno) VALUES
('El Padrino', 'Drama', 1972),
('Titanic', 'Romance', 1997),
('Avatar', 'Ciencia Ficción', 2009),
('Inception', 'Thriller', 2010),
('Avengers: Endgame', 'Acción', 2019),
('El Joker', 'Drama', 2019),
('Interstellar', 'Ciencia Ficción', 2014),
('Parasite', 'Thriller', 2019),
('Forrest Gump', 'Drama', 1994),
('Gladiador', 'Acción', 2000);

-- Insertar datos en la dimensión actor
INSERT INTO dim_actor (nombre_corto, nombre_real, fecha_nacimiento) VALUES
('Marlon Brando', 'Marlon Brando Jr.', '1924-04-03'),
('Leonardo DiCaprio', 'Leonardo Wilhelm DiCaprio', '1974-11-11'),
('Sam Worthington', 'Samuel Henry John Worthington', '1976-08-02'),
('Tom Hardy', 'Edward Thomas Hardy', '1977-09-15'),
('Robert Downey Jr.', 'Robert John Downey Jr.', '1965-04-04'),
('Joaquin Phoenix', 'Joaquin Rafael Phoenix', '1974-10-28'),
('Matthew McConaughey', 'Matthew David McConaughey', '1969-11-04'),
('Song Kang-ho', 'Song Kang-ho', '1967-01-17'),
('Tom Hanks', 'Thomas Jeffrey Hanks', '1956-07-09'),
('Russell Crowe', 'Russell Ira Crowe', '1964-04-07');

-- Insertar datos en la dimensión cassette
INSERT INTO dim_cassette (id_pelicula, formato) VALUES
(1, 'DVD'),
(2, 'Blu-ray'),
(3, 'DVD'),
(4, 'Blu-ray'),
(5, 'VHS'),
(6, 'DVD'),
(7, 'Blu-ray'),
(8, 'DVD'),
(9, 'Blu-ray'),
(10, 'VHS');

-- Insertar datos en la tabla de hechos alquileres
INSERT INTO hechos_alquileres (id_cassette, id_pelicula, id_cliente, id_actor, id_tiempo, cantidad_alquilada, ingreso_generado, tiempo_devolucion, retraso_devolucion) VALUES
(1, 1, 1, 1, 1, 1, 5000, 3, 0),
(2, 2, 2, 2, 2, 2, 10000, 5, 1),
(3, 3, 3, 3, 3, 1, 7000, 4, 0),
(4, 4, 4, 4, 4, 3, 15000, 7, 2),
(5, 5, 5, 5, 5, 1, 5000, 3, 0),
(6, 6, 6, 6, 6, 2, 10000, 5, 1),
(7, 7, 7, 7, 7, 1, 7000, 4, 0),
(8, 8, 8, 8, 8, 3, 15000, 7, 2),
(9, 9, 9, 9, 9, 1, 5000, 3, 0),
(10, 10, 10, 10, 10, 2, 10000, 5, 1);

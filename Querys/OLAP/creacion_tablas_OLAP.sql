-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS dwh_pelisbigdata;
USE dwh_pelisbigdata;

-- Tabla de Hechos: hechos_alquileres
CREATE TABLE hechos_alquileres (
    id_alquiler INT PRIMARY KEY AUTO_INCREMENT,
    id_cassette INT,
    id_pelicula INT,
    id_cliente INT,
    id_actor INT,
    id_tiempo INT,
    cantidad_alquilada INT,
    ingreso_generado DECIMAL(10,2),
    tiempo_devolucion INT,
    retraso_devolucion INT,
    FOREIGN KEY (id_cassette) REFERENCES dim_cassette(id_cassette),
    FOREIGN KEY (id_pelicula) REFERENCES dim_pelicula(id_pelicula),
    FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente),
    FOREIGN KEY (id_actor) REFERENCES dim_actor(id_actor),
    FOREIGN KEY (id_tiempo) REFERENCES dim_tiempo(id_tiempo)
);

-- Tabla de Dimensión: Tiempo (sin trimestre y con festividades colombianas)
CREATE TABLE dim_tiempo (
    id_tiempo INT PRIMARY KEY AUTO_INCREMENT,
    anio INT,
    mes INT,
    dia INT,
    semana INT,
    dia_nombre VARCHAR(20), -- Lunes, Martes, etc.
    festividad VARCHAR(50)  -- San Valentín, Día de la Mujer, etc.
);

-- Tabla de Dimensión: Cliente
CREATE TABLE dim_cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(20),
    direccion VARCHAR(100),
    tipo_cliente ENUM('Frecuente', 'Ocasional', 'Nuevo')
);

-- Tabla de Dimensión: Película
CREATE TABLE dim_pelicula (
    id_pelicula INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    genero VARCHAR(50),
    anio_estreno INT
);

-- Tabla de Dimensión: Actor
CREATE TABLE dim_actor (
    id_actor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_corto VARCHAR(50),
    nombre_real VARCHAR(100),
    fecha_nacimiento DATE
);

-- Tabla de Dimensión: Cassette
CREATE TABLE dim_cassette (
    id_cassette INT PRIMARY KEY AUTO_INCREMENT,
    id_pelicula INT,
    formato ENUM('DVD', 'Blu-ray', 'VHS'),
    FOREIGN KEY (id_pelicula) REFERENCES dim_pelicula(id_pelicula)
);

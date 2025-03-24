-- Crear la base de datos
CREATE DATABASE pelisBigData;
USE pelisBigData;

-- Crear tabla Tipo_Pelicula
CREATE TABLE Tipo_Pelicula (
    Cod_Tipo INT PRIMARY KEY AUTO_INCREMENT,
    Genero VARCHAR(50) NOT NULL
);

-- Crear tabla Peliculas
CREATE TABLE Peliculas (
    Cod_Pelicula INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(100) NOT NULL,
    Cod_Tipo INT,
    FOREIGN KEY (Cod_Tipo) REFERENCES Tipo_Pelicula(Cod_Tipo)
);

-- Crear tabla Actor
CREATE TABLE Actor (
    Cod_Actor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Corto VARCHAR(50) NOT NULL,
    Nombre_Real VARCHAR(100),
    Fecha_Nac DATE
);

-- Crear tabla Peli_Actor (relación muchos a muchos)
CREATE TABLE Peli_Actor (
    Cod_Pelicula INT,
    Cod_Actor INT,
    PRIMARY KEY (Cod_Pelicula, Cod_Actor),
    FOREIGN KEY (Cod_Pelicula) REFERENCES Peliculas(Cod_Pelicula),
    FOREIGN KEY (Cod_Actor) REFERENCES Actor(Cod_Actor)
);

-- Crear tabla Cassette
CREATE TABLE Cassette (
    Cod_Cassette INT PRIMARY KEY AUTO_INCREMENT,
    Formato VARCHAR(20) NOT NULL,
    Cod_Pelicula INT,
    FOREIGN KEY (Cod_Pelicula) REFERENCES Peliculas(Cod_Pelicula)
);

-- Crear tabla Clientes
CREATE TABLE Clientes (
    Cod_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

-- Crear tabla Alquiler
CREATE TABLE Alquiler (
    Cod_Alquiler INT PRIMARY KEY AUTO_INCREMENT,
    Cod_Cliente INT,
    Fecha_Alquiler DATE NOT NULL,
    Fecha_Devolucion DATE,
    FOREIGN KEY (Cod_Cliente) REFERENCES Clientes(Cod_Cliente)
);

-- Crear tabla Cassette_Alquiler (relación entre Cassette y Alquiler)
CREATE TABLE Cassette_Alquiler (
    Cod_Cassette INT,
    Cod_Alquiler INT,
    PRIMARY KEY (Cod_Cassette, Cod_Alquiler),
    FOREIGN KEY (Cod_Cassette) REFERENCES Cassette(Cod_Cassette),
    FOREIGN KEY (Cod_Alquiler) REFERENCES Alquiler(Cod_Alquiler)
);

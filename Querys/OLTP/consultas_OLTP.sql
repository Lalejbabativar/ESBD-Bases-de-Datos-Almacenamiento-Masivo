USE pelisBigData;

-- Listar todas las películas con su género
SELECT p.Titulo, t.Genero 
FROM Peliculas p
JOIN Tipo_Pelicula t ON p.Cod_Tipo = t.Cod_Tipo;

-- Mostrar todos los actores y las películas en las que han participado
SELECT a.Nombre_Corto AS Actor, p.Titulo AS Pelicula
FROM Actor a
JOIN Peli_Actor pa ON a.Cod_Actor = pa.Cod_Actor
JOIN Peliculas p ON pa.Cod_Pelicula = p.Cod_Pelicula
ORDER BY Actor;

-- Listar los clientes que han alquilado películas y sus respectivas fechas
SELECT c.Nombre, c.Apellido, a.Fecha_Alquiler, a.Fecha_Devolucion
FROM Clientes c
JOIN Alquiler a ON c.Cod_Cliente = a.Cod_Cliente
ORDER BY a.Fecha_Alquiler DESC;

-- Consultar qué formato de cassette tiene cada película
SELECT p.Titulo, c.Formato 
FROM Cassette c
JOIN Peliculas p ON c.Cod_Pelicula = p.Cod_Pelicula;

-- Obtener la cantidad de películas por género
SELECT t.Genero, COUNT(p.Cod_Pelicula) AS Total_Peliculas
FROM Tipo_Pelicula t
LEFT JOIN Peliculas p ON t.Cod_Tipo = p.Cod_Tipo
GROUP BY t.Genero
ORDER BY Total_Peliculas DESC;

-- Ver el historial de alquileres con la película y el cliente que la alquiló
SELECT c.Nombre, c.Apellido, p.Titulo, a.Fecha_Alquiler, a.Fecha_Devolucion
FROM Alquiler a
JOIN Clientes c ON a.Cod_Cliente = c.Cod_Cliente
JOIN Cassette_Alquiler ca ON a.Cod_Alquiler = ca.Cod_Alquiler
JOIN Cassette cs ON ca.Cod_Cassette = cs.Cod_Cassette
JOIN Peliculas p ON cs.Cod_Pelicula = p.Cod_Pelicula
ORDER BY a.Fecha_Alquiler DESC;

-- Consultar cuántas veces se ha alquilado cada película
SELECT p.Titulo, COUNT(a.Cod_Alquiler) AS Veces_Alquilada
FROM Peliculas p
JOIN Cassette c ON p.Cod_Pelicula = c.Cod_Pelicula
JOIN Cassette_Alquiler ca ON c.Cod_Cassette = ca.Cod_Cassette
JOIN Alquiler a ON ca.Cod_Alquiler = a.Cod_Alquiler
GROUP BY p.Titulo
ORDER BY Veces_Alquilada DESC;

-- Listar los clientes que han alquilado más de una película
SELECT c.Nombre, c.Apellido, COUNT(a.Cod_Alquiler) AS Total_Alquileres
FROM Clientes c
JOIN Alquiler a ON c.Cod_Cliente = a.Cod_Cliente
GROUP BY c.Cod_Cliente
HAVING Total_Alquileres > 1
ORDER BY Total_Alquileres DESC;

-- Películas que no han sido alquiladas
SELECT p.Titulo
FROM Peliculas p
LEFT JOIN Cassette c ON p.Cod_Pelicula = c.Cod_Pelicula
LEFT JOIN Cassette_Alquiler ca ON c.Cod_Cassette = ca.Cod_Cassette
LEFT JOIN Alquiler a ON ca.Cod_Alquiler = a.Cod_Alquiler
WHERE a.Cod_Alquiler IS NULL;

-- Clientes que aún no han realizado ningún alquiler
SELECT c.Nombre, c.Apellido
FROM Clientes c
LEFT JOIN Alquiler a ON c.Cod_Cliente = a.Cod_Cliente
WHERE a.Cod_Alquiler IS NULL;

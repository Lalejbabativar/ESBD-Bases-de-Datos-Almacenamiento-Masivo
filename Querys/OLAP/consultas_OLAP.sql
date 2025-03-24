-- Ver cuantos alquileres se realizaron en cada festividad y cuanto dinero se generó en total en cada una de ellas.
SELECT 
    t.festividad, 
    COUNT(h.id_alquiler) AS total_alquileres, 
    SUM(h.ingreso_generado) AS ingresos_totales
FROM hechos_alquileres h
JOIN dim_tiempo t ON h.id_tiempo = t.id_tiempo
GROUP BY t.festividad
ORDER BY ingresos_totales DESC;

-- Identificar los 10 clientes que más ingresos han generado por concepto de alquileres.
SELECT 
    c.nombre, c.apellido, 
    c.tipo_cliente, 
    SUM(h.ingreso_generado) AS ingresos_totales
FROM hechos_alquileres h
JOIN dim_cliente c ON h.id_cliente = c.id_cliente
GROUP BY c.id_cliente
ORDER BY ingresos_totales DESC
LIMIT 10;

-- Identificar las que películas tienen demanda en festividades
SELECT 
    t.festividad, 
    p.titulo, 
    COUNT(h.id_alquiler) AS veces_alquilada
FROM hechos_alquileres h
JOIN dim_tiempo t ON h.id_tiempo = t.id_tiempo
JOIN dim_pelicula p ON h.id_pelicula = p.id_pelicula
GROUP BY t.festividad, p.titulo
ORDER BY t.festividad, veces_alquilada DESC;

-- Analizar el comportamiento de los clientes en terminos de devoluciones
SELECT 
    AVG(h.retraso_devolucion) AS retraso_promedio_dias
FROM hechos_alquileres h;

-- Analizar si hay formatos (DVD, Blu-ray, VHS) que generan más ingresos que otros
SELECT 
    c.formato, 
    SUM(h.ingreso_generado) AS ingresos_totales
FROM hechos_alquileres h
JOIN dim_cassette c ON h.id_cassette = c.id_cassette
GROUP BY c.formato
ORDER BY ingresos_totales DESC;

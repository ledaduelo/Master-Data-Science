
--join a la izquierda
SELECT airline_code_2c, flight_freq, name
FROM ref_airline_nb_of_flights AS r
LEFT OUTER JOIN optd_airlines AS o
ON o."2char_code" = r.airline_code_2c
ORDER BY flight_freq DESC LIMIT 10;

SELECT count(*) from ref_airline_nb_of_flights;


--join a la izquierda a la inverza

SELECT airline_code_2c, flight_freq, name
FROM optd_airlines AS o
LEFT OUTER JOIN ref_airline_nb_of_flights AS r
ON o."2char_code" = r.airline_code_2c;

--order
ORDER BY flight_freq DESC LIMIT 10;

-- tantas filas como tabla o
SELECT airline_code_2c, flight_freq, name
FROM ref_airline_nb_of_flights AS r
RIGHT OUTER JOIN optd_airlines AS o
ON o."2char_code" = r.airline_code_2c;

--equivalente a la primera ?, he tomado foto en el móvil, hacer top para probar

SELECT airline_code_2c, flight_freq, name
FROM ref_airline_nb_of_flights AS r
RIGHT OUTER JOIN optd_airlines AS o
ON o."2char_code" = r.airline_code_2c;

--elevación por encima de la media

SELECT name, country_name, elevation
FROM optd_por_public
WHERE elevation > (SELECT avg(elevation) FROM optd_por_public) AND location_type='C'
LIMIT 10;

-- otro

SELECT country_name, count(*) AS n
FROM optd_por_public
WHERE elevation > (
    SELECT avg(elevation) 
    FROM optd_por_public
    WHERE elevation IS NOT NULL 
    AND location_type='C'
) AND location_type='C'
GROUP BY country_name
HAVING COUNT(*) >= 3;





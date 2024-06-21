USE metro_cdmx;

DELIMITER //
CREATE PROCEDURE calculate_distance_between_lines(
  IN station_one POINT,
  IN station_two POINT,
  IN meters BOOLEAN
)
BEGIN
  IF meters THEN 
    SELECT ST_Distance_Sphere(station_one, station_two) AS distance;
  ELSE 
    SELECT ST_Distance_Sphere(station_one, station_two)/ 1000 AS distance;
  END IF;
END //

DELIMITER ;

/*Llamar a un procedimiento (ejecutarlo)*/
CALL calculate_distance_between_lines(POINT(-99.14433718, 19.40702104), 
                                      POINT(-99.173702, 19.49039233),
                                      FALSE);

/*Eliminar un procedimiento*/

/*DROP PROCEDURE calculate_distance_between_lines;*/

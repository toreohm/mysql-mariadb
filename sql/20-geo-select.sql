USE metro_cdmx;

/*Calcular la distancia en metros entre dos puntos en el planeta tierra*/
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) AS distance; 

/*Calcular la distancia en kilometros entre dos puntos en el planeta tierra*/
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) / 1000 AS distance;  

/*Calculamos en kilometros con consultas anidadas*/
SELECT
ST_Distance_Sphere(
    (SELECT `locations`.`location` FROM `locations`
    INNER JOIN `stations` ON `stations`.`id` = `locations`.`station_id`
    WHERE `stations`.`name` = 'Balderas'),
    (SELECT `locations`.`location` FROM `locations`
    INNER JOIN `stations` ON `stations`.`id` = `locations`.`station_id`
    WHERE `stations`.`name` = 'Pino Suarez')
) / 1000 AS distance;
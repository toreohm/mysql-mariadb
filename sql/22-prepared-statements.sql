USE metro_cdmx;

DELIMITER //
CREATE PROCEDURE get_line_stations(
  IN line_name VARCHAR(20)
)
BEGIN
  DECLARE line_id BIGINT(20); /*Declaración de variable*/
  /*Almacenamos el valor en la variable line_id*/
  SELECT id INTO line_id FROM `lines` WHERE name = line_name COLLATE utf8mb4_unicode_ci;

  /*Otra forma de guardar valores de una consulta dentro de una variable*/
  SET @sql = CONCAT("
    SELECT 
      `lines_stations`.`id` AS relation_id, 
      `lines`.`name` AS line_name,
      `stations`.`name` AS station_name
      FROM `lines_stations`
      INNER JOIN `stations`
      ON `stations`.`id` = `lines_stations`.`station_id`
      INNER JOIN `lines` 
      ON `lines`.`id` = `lines_stations`.`line_id` 
      WHERE `lines_stations`.`line_id` = ", line_id);

  PREPARE stmt FROM @sql;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

END //
DELIMITER ;
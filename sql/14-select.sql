USE metro_cdmx;

--El SELECT más básico
SELECT * FROM `lines`;

--Filtrar por columnas
SELECT id, name, color FROM `lines`;

--Operaciones matemáticas con SELECT
SELECT (2 + 2);
SELECT (2 + 2) AS Resultado;
SELECT AVG(year) AS Promedio_Year FROM `trains`;

--Juntar tablas
SELECT `lines`.`name`, `trains`.`serial_number` FROM `lines`
INNER JOIN `trains` ON `lines`.`id` = `trains`.`line_id`; 
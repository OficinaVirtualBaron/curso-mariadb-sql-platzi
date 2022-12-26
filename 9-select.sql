USE metro_cdmx;

-- Seleccionar todo de una tabla especifica
SELECT * FROM `lines`;

-- Filtrado por columnas
SELECT name, color FROM `lines`;

-- Operaciones matematicas
SELECT (2 * 2) AS result;

-- Promedio de años de todos los trenes
SELECT AVG(year) AS year_avg FROM `trains`;

-- Traer que trenes (serial_number) estan relacionados a cada linea (id)
SELECT `lines`.`name`, `trains`.`serial_number` FROM `lines` INNER JOIN `trains` ON `lines`.`id` = `trains`.`line_id`;
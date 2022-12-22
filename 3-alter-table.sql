USE metro_cdmx;

ALTER TABLE `stations` 
MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- AÑADIR FOREIGN KEY A LA TABLA
-- ADD CONSTRAINT `stations_line_id_foreign`
-- FOREIGN KEY (`stations_id`) REFERENCES `stations` (`id`);
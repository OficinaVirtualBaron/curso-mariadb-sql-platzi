-- Usar la DB 
USE metro_cdmx;


-- Creacion de tabla "stations"
CREATE TABLE `stations` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_At` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- Creacion de tabla "trains"
CREATE TABLE `trains` (
    `serial_number` BIGINT(20) UNSIGNED NOT NULL_INCREMENT,
    `line_id` VARCHAR(20) NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (serial_number),
    CONSTRAINT `trains_line_id_foreign`,
    FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)
);
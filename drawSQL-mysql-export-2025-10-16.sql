CREATE TABLE `EstablecimientoEducativo`(
    `id nombreestablecimiento` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `año` INT NOT NULL,
    `direccion` VARCHAR(255) NOT NULL,
    `telefono` INT NOT NULL,
    `numero_de_Sedes` DECIMAL(8, 2) NOT NULL,
    `correo_Electronico` VARCHAR(50) NOT NULL
);
CREATE TABLE `Zona`(
    `id Zona` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Tipozona` VARCHAR(50) NOT NULL
);
CREATE TABLE `Rector`(
    `id Rector` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL
);
CREATE TABLE `Tipo_Establecimiento`(
    `id Tipo_Establecimiento` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `TipoEstablecimiento` VARCHAR(100) NOT NULL
);
CREATE TABLE `Sector`(
    `id Sector` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `TipoSector` VARCHAR(100) NOT NULL
);
CREATE TABLE `nivelEducativo`(
    `id nivelEducativo` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `niveles` VARCHAR(100) NOT NULL,
    `grados` INT NOT NULL
);
CREATE TABLE `Especialidad`(
    `id Especialidad` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tipoEspecialidad` VARCHAR(100) NOT NULL,
    `New column` INT NOT NULL
);
CREATE TABLE `Jornada`(
    `id Jornada` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tipoJornada` VARCHAR(100) NOT NULL
);
ALTER TABLE
    `EstablecimientoEducativo` ADD CONSTRAINT `establecimientoeducativo_direccion_foreign` FOREIGN KEY(`direccion`) REFERENCES `Tipo_Establecimiento`(`id Tipo_Establecimiento`);
ALTER TABLE
    `EstablecimientoEducativo` ADD CONSTRAINT `establecimientoeducativo_direccion_foreign` FOREIGN KEY(`direccion`) REFERENCES `nivelEducativo`(`id nivelEducativo`);
ALTER TABLE
    `EstablecimientoEducativo` ADD CONSTRAINT `establecimientoeducativo_id nombreestablecimiento_foreign` FOREIGN KEY(`id nombreestablecimiento`) REFERENCES `Rector`(`id Rector`);
ALTER TABLE
    `EstablecimientoEducativo` ADD CONSTRAINT `establecimientoeducativo_direccion_foreign` FOREIGN KEY(`direccion`) REFERENCES `Especialidad`(`id Especialidad`);
ALTER TABLE
    `EstablecimientoEducativo` ADD CONSTRAINT `establecimientoeducativo_id nombreestablecimiento_foreign` FOREIGN KEY(`id nombreestablecimiento`) REFERENCES `Zona`(`id Zona`);
ALTER TABLE
    `EstablecimientoEducativo` ADD CONSTRAINT `establecimientoeducativo_direccion_foreign` FOREIGN KEY(`direccion`) REFERENCES `Sector`(`id Sector`);
ALTER TABLE
    `EstablecimientoEducativo` ADD CONSTRAINT `establecimientoeducativo_correo_electronico_foreign` FOREIGN KEY(`correo_Electronico`) REFERENCES `Jornada`(`id Jornada`);
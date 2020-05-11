-- MySQL Script generated by MySQL Workbench
-- Mon May 11 17:14:09 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_covid19
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_covid19
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_covid19` DEFAULT CHARACTER SET utf8 ;
USE `bd_covid19` ;

-- -----------------------------------------------------
-- Table `bd_covid19`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_covid19`.`Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NULL,
  `user` VARCHAR(45) NULL,
  `pass` VARCHAR(45) NULL,
  PRIMARY KEY (`idUsuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_covid19`.`Ciudadanos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_covid19`.`Ciudadanos` (
  `idCiudadanos` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NULL,
  `celular` VARCHAR(45) NULL,
  `nacionalidad` VARCHAR(45) NULL,
  `tipoDocumento` VARCHAR(45) NULL,
  `numeroDocumento` VARCHAR(45) NULL,
  PRIMARY KEY (`idCiudadanos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_covid19`.`triaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_covid19`.`triaje` (
  `idTriaje` INT NOT NULL AUTO_INCREMENT,
  `pregunta1` CHAR(2) NULL,
  `pregunta2` CHAR(2) NULL,
  `pregunta3` CHAR(2) NULL,
  `pregunta4` CHAR(2) NULL,
  `pregunta5` CHAR(2) NULL,
  `idCiudadanos` INT NOT NULL,
  PRIMARY KEY (`idTriaje`),
  INDEX `fk_triaje_Ciudadanos_idx` (`idCiudadanos` ASC) VISIBLE,
  CONSTRAINT `fk_triaje_Ciudadanos`
    FOREIGN KEY (`idCiudadanos`)
    REFERENCES `bd_covid19`.`Ciudadanos` (`idCiudadanos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

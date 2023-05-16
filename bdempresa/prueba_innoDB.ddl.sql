-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema empresa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema empresa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `empresa` DEFAULT CHARACTER SET latin1 ;
USE `empresa` ;

-- -----------------------------------------------------
-- Table `empresa`.`consultoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresa`.`consultoras` (
  `nroCuit` INT(11) NOT NULL,
  `razonSocial` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`nroCuit`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `empresa`.`departamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresa`.`departamentos` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `empresa`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresa`.`empleados` (
  `nroLegajo` INT(11) NOT NULL,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `apellido` VARCHAR(50) NULL DEFAULT NULL,
  `nroDepartamento` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`nroLegajo`),
  INDEX `nroDepartamento` (`nroDepartamento` ASC) VISIBLE,
  CONSTRAINT `empleados_ibfk_1`
    FOREIGN KEY (`nroDepartamento`)
    REFERENCES `empresa`.`departamentos` (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `empresa`.`contratados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresa`.`contratados` (
  `nroLegajo` INT(11) NOT NULL,
  `nroCuit` INT(11) NULL DEFAULT NULL,
  `precioPorHora` INT(11) NULL DEFAULT NULL,
  `horaExtra` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`nroLegajo`),
  INDEX `nroCuit` (`nroCuit` ASC) VISIBLE,
  CONSTRAINT `contratados_ibfk_1`
    FOREIGN KEY (`nroLegajo`)
    REFERENCES `empresa`.`empleados` (`nroLegajo`),
  CONSTRAINT `contratados_ibfk_2`
    FOREIGN KEY (`nroCuit`)
    REFERENCES `empresa`.`consultoras` (`nroCuit`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `empresa`.`efectivos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresa`.`efectivos` (
  `nroLegajo` INT(11) NOT NULL,
  `salario` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`nroLegajo`),
  CONSTRAINT `efectivos_ibfk_1`
    FOREIGN KEY (`nroLegajo`)
    REFERENCES `empresa`.`empleados` (`nroLegajo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

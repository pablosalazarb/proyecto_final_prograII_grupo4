-- MySQL Script generated by MySQL Workbench
-- Fri Oct 21 23:52:36 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rol` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  `correo_electronico` VARCHAR(30) NOT NULL,
  `password` VARCHAR(25) NOT NULL,
  `rol_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_usuario_rol_idx` (`rol_id` ASC) ,
  CONSTRAINT `fk_usuario_rol`
    FOREIGN KEY (`rol_id`)
    REFERENCES `mydb`.`rol` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`estado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categoria_proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categoria_proyecto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`proyecto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` VARCHAR(50) NOT NULL,
  `descripcion` VARCHAR(150) NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `usuario_id` INT NOT NULL,
  `estado_id` INT NOT NULL,
  `categoria_proyecto_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_proyecto_usuario1_idx` (`usuario_id` ASC) ,
  INDEX `fk_proyecto_estado1_idx` (`estado_id` ASC) ,
  INDEX `fk_proyecto_categoria_proyecto1_idx` (`categoria_proyecto_id` ASC) ,
  CONSTRAINT `fk_proyecto_usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `mydb`.`usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyecto_estado1`
    FOREIGN KEY (`estado_id`)
    REFERENCES `mydb`.`estado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyecto_categoria_proyecto1`
    FOREIGN KEY (`categoria_proyecto_id`)
    REFERENCES `mydb`.`categoria_proyecto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`asignacion_colaborador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`asignacion_colaborador` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  `proyecto_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_asignacion_colaborador_usuario1_idx` (`usuario_id` ASC) ,
  INDEX `fk_asignacion_colaborador_proyecto1_idx` (`proyecto_id` ASC) ,
  CONSTRAINT `fk_asignacion_colaborador_usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `mydb`.`usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_asignacion_colaborador_proyecto1`
    FOREIGN KEY (`proyecto_id`)
    REFERENCES `mydb`.`proyecto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`recurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`recurso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`asignacion_recurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`asignacion_recurso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `recurso_id` INT NOT NULL,
  `proyecto_id` INT NOT NULL,
  `contenido` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_asignacion_recurso_recurso1_idx` (`recurso_id` ASC) ,
  INDEX `fk_asignacion_recurso_proyecto1_idx` (`proyecto_id` ASC) ,
  CONSTRAINT `fk_asignacion_recurso_recurso1`
    FOREIGN KEY (`recurso_id`)
    REFERENCES `mydb`.`recurso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_asignacion_recurso_proyecto1`
    FOREIGN KEY (`proyecto_id`)
    REFERENCES `mydb`.`proyecto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

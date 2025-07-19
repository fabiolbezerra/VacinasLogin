-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema vacinas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vacinas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vacinas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `vacinas` ;

-- -----------------------------------------------------
-- Table `vacinas`.`raca`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`raca` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`raca` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`animal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`animal` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`animal` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(100) NOT NULL COMMENT '',
  `dono` VARCHAR(100) NOT NULL COMMENT '',
  `telefone` VARCHAR(9) NOT NULL COMMENT '',
  `tipo` CHAR NOT NULL COMMENT 'G - Gato\nC - Cachorro',
  `nascimento` DATE NULL COMMENT '',
  `raca` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_animal_raca1_idx` (`raca` ASC)  COMMENT '',
  CONSTRAINT `fk_animal_raca1`
    FOREIGN KEY (`raca`)
    REFERENCES `vacinas`.`raca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`vacina`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`vacina` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`vacina` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(100) NOT NULL COMMENT '',
  `data` DATE NOT NULL COMMENT '',
  `animal` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_vacina_animal_idx` (`animal` ASC)  COMMENT '',
  CONSTRAINT `fk_vacina_animal`
    FOREIGN KEY (`animal`)
    REFERENCES `vacinas`.`animal` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`usuario` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(50) NOT NULL COMMENT '',
  `email` VARCHAR(150) NOT NULL COMMENT '',
  `celular` VARCHAR(11) NOT NULL COMMENT '',
  `senha` VARCHAR(100) NOT NULL COMMENT '',
  `perfil` CHAR NOT NULL DEFAULT 'U' COMMENT 'A - Administrador\nV - Veterináio\nU - Usuário',
  PRIMARY KEY (`id`)  COMMENT '',
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)  COMMENT '',
  UNIQUE INDEX `celular_UNIQUE` (`celular` ASC)  COMMENT '')
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

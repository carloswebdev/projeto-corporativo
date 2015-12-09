-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema fiap_ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fiap_ecommerce` ;

-- -----------------------------------------------------
-- Schema fiap_ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fiap_ecommerce` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
SHOW WARNINGS;
USE `fiap_ecommerce` ;

-- -----------------------------------------------------
-- Table `cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cliente` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `senha` VARCHAR(45) NULL,
  `endereco_cep` VARCHAR(500) NULL,
  `cpf` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL,
  `nome_mae` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `profissao_cbo` VARCHAR(45) NULL,
  `salario` DECIMAL(10) NULL,
  `data_nascimento` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `status` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pedido` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cliente_id` INT NOT NULL,
  `status_id` INT NOT NULL,
  `data_criacao` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Pedido_cliente1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_status1`
    FOREIGN KEY (`status_id`)
    REFERENCES `status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_Pedido_cliente1_idx` ON `pedido` (`cliente_id` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_pedido_status1_idx` ON `pedido` (`status_id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `categoria_produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `categoria_produto` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `categoria_produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `produto` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoria_produto_id` INT NOT NULL,
  `nome` VARCHAR(100) NULL,
  `breve_descricao` VARCHAR(500) NULL,
  `descricao` VARCHAR(2000) NULL,
  `preco` DECIMAL(10) NULL,
  `fabricante` VARCHAR(100) NULL,
  `url_imagem_produto` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_produto_categoria_produto`
    FOREIGN KEY (`categoria_produto_id`)
    REFERENCES `categoria_produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_produto_categoria_produto_idx` ON `produto` (`categoria_produto_id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `estoque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `estoque` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `estoque` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `endereco` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `itens_estoque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `itens_estoque` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `itens_estoque` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `produto_id` INT NOT NULL,
  `estoque_id` INT NOT NULL,
  `quantidade` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_itens_estoque_produto1`
    FOREIGN KEY (`produto_id`)
    REFERENCES `produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_itens_estoque_estoque1`
    FOREIGN KEY (`estoque_id`)
    REFERENCES `estoque` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_itens_estoque_produto1_idx` ON `itens_estoque` (`produto_id` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_itens_estoque_estoque1_idx` ON `itens_estoque` (`estoque_id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `politica_credito`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `politica_credito` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `politica_credito` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `valor_produto` DECIMAL(10) NULL,
  `valor_produto_comparacao` VARCHAR(5) NULL,
  `cliente_base` TINYINT(1) NULL,
  `blacklist` TINYINT(1) NULL,
  `divida_com_empresa` TINYINT(1) NULL,
  `spc` TINYINT(1) NULL,
  `resultado` TINYINT(1) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `item_pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `item_pedido` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `item_pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pedido_id` INT NOT NULL,
  `produto_id` INT NOT NULL,
  `quantidade` INT NULL,
  `preco` DECIMAL(10) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_item_pedido_pedido1`
    FOREIGN KEY (`pedido_id`)
    REFERENCES `pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_pedido_produto1`
    FOREIGN KEY (`produto_id`)
    REFERENCES `produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_item_pedido_pedido1_idx` ON `item_pedido` (`pedido_id` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_item_pedido_produto1_idx` ON `item_pedido` (`produto_id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `boleto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `boleto` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `boleto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pedido_id` INT NOT NULL,
  `codigo_banco` INT NULL,
  `vencimento` DATETIME NULL,
  `data_documento` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_boleto_pedido1`
    FOREIGN KEY (`pedido_id`)
    REFERENCES `pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_boleto_pedido1_idx` ON `boleto` (`pedido_id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `nota_fiscal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nota_fiscal` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `nota_fiscal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pedido_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_nota_fiscal_pedido1`
    FOREIGN KEY (`pedido_id`)
    REFERENCES `pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_nota_fiscal_pedido1_idx` ON `nota_fiscal` (`pedido_id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `rastreabilidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rastreabilidade` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `rastreabilidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pedido_id` INT NOT NULL,
  `status_id` INT NOT NULL,
  `data` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_rastreabilidade_pedido1`
    FOREIGN KEY (`pedido_id`)
    REFERENCES `pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rastreabilidade_status1`
    FOREIGN KEY (`status_id`)
    REFERENCES `status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `fk_rastreabilidade_pedido1_idx` ON `rastreabilidade` (`pedido_id` ASC);

SHOW WARNINGS;
CREATE INDEX `fk_rastreabilidade_status1_idx` ON `rastreabilidade` (`status_id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `blacklist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `blacklist` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `blacklist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `spc`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `spc` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `spc` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

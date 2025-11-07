-- Script MySQL para o banco Gloob_DB

CREATE DATABASE IF NOT EXISTS Gloob_DB;
USE Gloob_DB;

-- Desativar verificações temporariamente para evitar erros durante criação
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- Tabela Sangue
CREATE TABLE IF NOT EXISTS Sangue (
    idSangue INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_Sang VARCHAR(10) NOT NULL
) ENGINE=InnoDB;

-- Tabela Unidade
CREATE TABLE IF NOT EXISTS Unidade (
    idUnidade INT AUTO_INCREMENT PRIMARY KEY,
    nome_unidade VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    contato VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- Tabela Estoque
CREATE TABLE IF NOT EXISTS Estoque (
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    qtd_estoque INT NOT NULL,
    capacidade INT NOT NULL,
    Unidade_idUnidade INT NOT NULL,
    Sangue_idSangue INT NOT NULL,
    CONSTRAINT fk_Estoque_Unidade
        FOREIGN KEY (Unidade_idUnidade)
        REFERENCES Unidade (idUnidade)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_Estoque_Sangue
        FOREIGN KEY (Sangue_idSangue)
        REFERENCES Sangue (idSangue)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    UNIQUE (Unidade_idUnidade, Sangue_idSangue)
) ENGINE=InnoDB;

-- Restaurar verificações
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

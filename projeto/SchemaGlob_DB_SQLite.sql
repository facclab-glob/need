-- Script SQLite para o banco Gloob_DB


PRAGMA foreign_keys = ON; --Ativsão do uso de chave estrangeira no SQLite

CREATE TABLE IF NOT EXISTS Sangue (
    idSangue INTEGER PRIMARY KEY AUTOINCREMENT,
    Tipo_Sang TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Unidade (
    idUnidade INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_unidade TEXT NOT NULL,
    cidade TEXT NOT NULL,
    contato TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS Estoque (
    idEstoque INTEGER PRIMARY KEY AUTOINCREMENT,
    qtd_estoque INTEGER NOT NULL,
    capacidade INTEGER NOT NULL,
    Unidade_idUnidade INTEGER NOT NULL,
    Sangue_idSangue INTEGER NOT NULL,
    FOREIGN KEY (Unidade_idUnidade) REFERENCES Unidade (idUnidade) -- Defini chave estrangeira
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Sangue_idSangue) REFERENCES Sangue (idSangue)
        ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (Unidade_idUnidade, Sangue_idSangue)
);

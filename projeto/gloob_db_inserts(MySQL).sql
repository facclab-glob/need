USE Gloob_DB;

-- 🩸 Tabela: Sangue
INSERT INTO Sangue (Tipo_Sang) VALUES
('A+'),
('A-'),
('B+'),
('B-'),
('AB+'),
('AB-'),
('O+'),
('O-');

-- 🏥 Tabela: Unidade
INSERT INTO Unidade (nome_unidade, cidade, contato) VALUES
('HemoCentro São Paulo', 'São Paulo', '(11) 3456-7890'),
('Banco de Sangue Campinas', 'Campinas', '(19) 3344-5566'),
('HemoRio', 'Rio de Janeiro', '(21) 9988-7766'),
('HemoMinas', 'Belo Horizonte', '(31) 3333-2222'),
('HemoCuritiba', 'Curitiba', '(41) 9999-8888');

-- 🧪 Tabela: Estoque
-- Cada unidade tem estoques de alguns tipos sanguíneos
INSERT INTO Estoque (qtd_estoque, capacidade, Unidade_idUnidade, Sangue_idSangue) VALUES
(25, 100, 1, 1), -- São Paulo - A+
(10, 80, 1, 7),  -- São Paulo - O+
(5, 50, 1, 8),   -- São Paulo - O-
(40, 100, 2, 1), -- Campinas - A+
(15, 90, 2, 3),  -- Campinas - B+
(8, 70, 2, 5),   -- Campinas - AB+
(20, 100, 3, 7), -- Rio - O+
(6, 80, 3, 8),   -- Rio - O-
(12, 100, 4, 2), -- BH - A-
(9, 60, 4, 4),   -- BH - B-
(18, 90, 5, 7),  -- Curitiba - O+
(4, 70, 5, 6);   -- Curitiba - AB-


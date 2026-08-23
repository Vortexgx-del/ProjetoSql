-- 1. Criação da Tabela Jogador
CREATE TABLE Jogador (
    ID_Jogador INT PRIMARY KEY,
    Nome VARCHAR(150),
    Email VARCHAR(150) UNIQUE,
    Idade INT CHECK (Idade >= 16)
);

-- 2. Criação da Tabela Personagem (Com Primary Key e sem Unique na Classe)
CREATE TABLE Personagem (
    ID_Personagem INT PRIMARY KEY,
    Nome VARCHAR(150) UNIQUE,
    Classe VARCHAR(50), -- Já criado com o tamanho ajustado
    Nivel INT DEFAULT 1,
    ID_Jogador INT FOREIGN KEY REFERENCES Jogador(ID_Jogador)
);

-- 3. Criação da Tabela Partida (Com Primary Key)
CREATE TABLE Partida (
    ID_Partida INT PRIMARY KEY,
    Data DATETIME NOT NULL,
    Resultado VARCHAR(150),
    ID_Jogador INT FOREIGN KEY REFERENCES Jogador(ID_Jogador)
);

-- 4. Inserção de Dados (Com o e-mail do Matheus corrigido)
INSERT INTO Jogador (ID_Jogador, Nome, Email, Idade) VALUES
    (1, 'Lucas Almeida', 'lucas.almeida@email.com', 22),
    (2, 'Matheus Souza', 'matheus.souza@email.com', 19),
    (3, 'Pedro Henrique', 'pedro.henrique@email.com', 17),
    (4, 'Beatriz Lima', 'beatriz.lima@email.com', 25),
    (5, 'Rafael Costa', 'rafael.costa@email.com', 30),
    (6, 'Camila Ferreira', 'camila.ferreira@email.com', 16),
    (7, 'Gustavo Martins', 'gustavo.martins@email.com', 28),
    (8, 'Isabela Rocha', 'isabela.rocha@email.com', 21);

INSERT INTO Personagem (ID_Personagem, Nome, Classe, Nivel, ID_Jogador) VALUES 
    (1, 'LucasMago123', 'Lendário', 45, 1),
    (2, 'MatheusPro', 'Épico', 30, 2),
    (3, 'Luigi Mario', 'Mítico', 12, 3),
    (4, 'Bowser Pitt', 'Raro', 60, 4),
    (5, 'RafaoNoob', 'Deus Supremo', 25, 5),
    (6, 'Farmador', 'Especial', 8, 6),
    (7, 'Noobzinho 223', 'SuperSonic', 3, 7),
    (8, 'Rochelli Juliana', 'Mágico', 33, 8);

-- 5. Consultas de Verificação
SELECT * FROM Jogador;
SELECT * FROM Personagem;
SELECT * FROM Partida

SELECT * 
FROM Personagem 
    WHERE Nome = 'Farmador'

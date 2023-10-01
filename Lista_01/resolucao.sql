CREATE TABLE Curso(
	id SERIAL,
	codigo TEXT NOT NULL,
	nome TEXT NOT NULL,
	instituicao TEXT NOT NULL,
	duracao SMALLINT
);

ALTER TABLE Curso ALTER COLUMN duracao SET DEFAULT 0;
ALTER TABLE Curso ADD PRIMARY KEY(id);

INSERT INTO Curso (codigo, nome, instituicao, duracao) values 
('2020IF', 'TADS', 'IFRN', 4),
('TADS2023', 'TADS', 'UFRN', 3),
('ENGE2000', 'ENGENHARIA', 'UFRN', 5),
('AGRO16', 'AGRONOMIA', 'UFRN', 5),
('ART20', 'ARTES', 'UFRN', 4);

CREATE TABLE Aluno(
	id SERIAL PRIMARY KEY,
	nome TEXT,
	sobrenome TEXT, 
	data_nasciemnto DATE,
	endereco TEXT
);

ALTER TABLE Aluno RENAME data_nasciemnto TO data_nascimento;

INSERT INTO Aluno(nome, sobrenome, data_nascimento, endereco) values
('João','Vitor','2000-04-21','Rua x'),
('Pedro','Azevedo','2006-07-12','Ruua y'),
('Carol','Maia','2011-10-10','Rua w'),
('Anderson','Patrick','2015-06-10','Rua j'),
('Beto','Cabral','2001-01-01','Rua p');

ALTER TABLE Aluno ADD COLUMN curso INT;
ALTER TABLE Aluno ADD CONSTRAINT curso FOREIGN KEY (curso) REFERENCES Curso (id);

INSERT INTO Aluno(nome,sobrenome, data_nascimento, endereco, curso) values
('João','Vitor','2000-04-21','Rua a',2),
('Gabriel','Miguel','2004-06-11','Rua b',2),
('Judite','Pereira','2011-01-15','Rua c',2),
('Gustavo','Amorim','2022-06-01','Rua d',4),
('Paulo','Souza','2010-07-15','Rua f',5);

SELECT nome FROM Curso;
SELECT DISTINCT nome FROM Curso;
SELECT nome FROM Curso WHERE duracao > 3;
SELECT nome,sobrenome FROM Aluno;
SELECT nome,sobrenome FROM Aluno WHERE curso > 0;
SELECT nome, sobrenome FROM Aluno WHERE curso = 2;


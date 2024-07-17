
-- Criando o banco de dados 
CREATE DATABASE db_escola;

-- Selecionando o banco de dados
USE db_escola;

-- Criando a tabela de colaboradores
CREATE TABLE tb_alunes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY ,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    turma VARCHAR(30) NOT NULL,
    nota DECIMAL(3,2) NOT NULL
);

-- Inserindo valores na tabela
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('Ana Silva', '2004-08-25', '9º ano B', 7.5);
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('Paulo Andrade','2006-09-30', '7º ano A',7.0);
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('Marília Santos','2005-07-10', '8º ano A', 6.5);
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('João Pedro','2012-06-12', '6º ano B', 5.5);
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('Joana Cardoso','2005-05-14', '8º ano A', 8.5);
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('Juliana Costa', '2012-10-01', '6º ano B', 8.0);
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('Lucas Almeida', '2004-04-12', '9º ano B', 9.5);
INSERT INTO tb_alunes (nome, data_nascimento,turma,nota) VALUES('Camila Pereira', '2006-02-02', '7º ano A', 5.3);

-- Listando alunes com nota maior que 7.0
SELECT * FROM tb_alunes WHERE nota > 7.0;

-- Listando alunes com a nota menor que 7.0
SELECT * FROM tb_alunes WHERE nota < 7.0;

-- Atualizando a nota 
UPDATE tb_alunes SET nota = 6.0 WHERE id = 8;


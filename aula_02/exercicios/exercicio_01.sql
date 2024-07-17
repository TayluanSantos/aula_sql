
-- Criando o banco de dados 
CREATE DATABASE db_rh;

-- Selecionando o banco de dados
USE db_rh;

-- Criando a tabela de colaboradores
CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cargo VARCHAR(80) NOT NULL,
    data_admissao DATE,
    salario DECIMAL(8,2)
);

-- Inserindo valores na tabela
INSERT INTO tb_colaboradores (nome, cargo,data_admissao,salario) VALUES('Ana Silva', 'Analista de Recursos Humanos','2022-03-15',2500);
INSERT INTO tb_colaboradores (nome, cargo,data_admissao,salario) VALUES('Paulo Andrade','Desenvolvedor de Software','2022-04-17',6000);
INSERT INTO tb_colaboradores (nome, cargo,data_admissao,salario) VALUES('Marília Santos','Gerente de Projetos','2020-04-20',8000);
INSERT INTO tb_colaboradores (nome, cargo,data_admissao,salario) VALUES('João Pedro','Assistente Administrativo','2023-06-10',1800);
INSERT INTO tb_colaboradores (nome, cargo,data_admissao,salario) VALUES('Joana Cardoso','Especialista em Marketing','2022-08-14',2800);

-- Listando colaboradores com salário maior que 2000 reais
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Listando colaboradores com salário menor que 2000 reais
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizando o salário de um colaborador
UPDATE tb_colaboradores SET salario = 3000 WHERE id = 1;


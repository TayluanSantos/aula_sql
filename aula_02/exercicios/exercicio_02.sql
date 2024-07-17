
-- Criando o banco de dados 
CREATE DATABASE db_ecommerce;

-- Selecionando o banco de dados
USE db_ecommerce;

-- Criando a tabela de colaboradores
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY ,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    estoque INT NOT NULL
);

-- Inserindo valores na tabela
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Smartphone Samsung', 'Smartphone com tela de 6.5 polegadas, 128GB de armazenamento.', 7500.00, 100);
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Notebook Acer', 'Notebook com processador i7, 16GB RAM, 512GB SSD.', 5600.00, 50);
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Smartwatch', 'Smartwatch com monitoramento de saúde e GPS integrado.', 800.00, 150);
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído.', 300.00, 200);
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Câmera Digital Canon', 'Câmera digital com 50MP e zoom óptico de 10x.', 6000.00, 75);
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Tablet Samsung', 'Tablet com tela de 10 polegadas, 64GB de armazenamento.', 4000.00, 120);
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Monitor 4K', 'Monitor 4K de 27 polegadas com alta resolução.', 1500.00, 60);
INSERT INTO tb_produtos (nome, descricao,preco,estoque) VALUES('Playstation 5', 'Console de última geração com 1TB de armazenamento.', 5000.00, 40);


-- Listando colaboradores com salário maior que 5000 reais
SELECT * FROM tb_produtos WHERE salario > 5000;

-- Listando colaboradores com salário menor que 5000 reais
SELECT * FROM tb_produtos WHERE salario < 5000;

-- Atualizando o nome de um produto
UPDATE tb_produtos SET nome = "Monitor 4k 60Hz" WHERE id = 7;


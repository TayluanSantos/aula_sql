-- Criando o banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Selecionando o banco de dados
USE db_farmacia_bem_estar;

-- Criando a tabela Categoria
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (100) NOT NULL
);

-- Criando a tabela Personagens e relacionando com a tabela Classes
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    preco TEXT  NOT NULL,
    estoque DECIMAL (8,2) NOT NULL,
    fabricante VARCHAR (50) NOT NULL ,
    categoria_id BIGINT,
    CONSTRAINT fk_produto_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo valores na tabela Categorias
INSERT INTO tb_categorias (categoria) VALUES("Medicamentos");
INSERT INTO tb_categorias (categoria) VALUES("Suplementos");
INSERT INTO tb_categorias (categoria) VALUES("Cuidados Pessoais");
INSERT INTO tb_categorias (categoria) VALUES("Beleza");
INSERT INTO tb_categorias (categoria) VALUES("Infantil");

-- Inserindo valores na tabela Pizzas
INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id)
 VALUES ('Paracetamol 500mg', 5.49 , 100, 'Farmacêutica X', 1);

INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id) 
VALUES ('Vitamina C 1000mg', 29.99, 50, 'Suplementos Y', 1);

INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id)
 VALUES ('Shampoo Anticaspa', 19.99, 75, 'Cuidados Pessoais Z', 4);

INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id) 
VALUES ('Creme Hidratante', 25.99, 60, 'Beleza W', 3);

INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id) 
VALUES ('Fralda Descartável G', 49.99, 80, 'Infantil V',5);

INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id) 
VALUES ('Ibuprofeno 200mg', 6.99, 120, 'Farmacêutica X', 1);

INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id) 
VALUES ('Ômega 3 1000mg', 39.99, 40, 'Suplementos Y',2);

INSERT INTO tb_produtos (nome, preco, estoque, fabricante,categoria_id)
VALUES ('Protetor Solar FPS 50', 59.99, 50, 'Beleza W',3);


-- Listando produtos com preço MAIOR que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Listando pizzas com preço ENTRE R$ 5,00 e R$ 60,00
SELECT *  FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Listando pizzas que contenham a letra M no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%"; 

-- Realizando um INNER JOIN entre as tabelas
SELECT nome,preco,estoque,fabricante,tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- Realizando um INNER JOIN entre as tabelas retornando apenas personagens da classe Arqueiro
SELECT nome,preco,estoque,fabricante,tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.categoria = "Medicamentos";


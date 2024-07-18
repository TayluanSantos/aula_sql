-- Criando o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Selecionando o banco de dados
USE db_pizzaria_legal;

-- Criando a tabela Classes
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (100) NOT NULL
);

-- Criando a tabela Personagens e relacionando com a tabela Classes
CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    ingredientes TEXT  NOT NULL,
    preco DECIMAL (8,2) NOT NULL,
    tamanho VARCHAR (50) NOT NULL ,
    categoria_id BIGINT,
    CONSTRAINT fk_pizza_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo valores na tabela Categorias
INSERT INTO tb_categorias (categoria) VALUES("Doces");
INSERT INTO tb_categorias (categoria) VALUES("Salgadas");
INSERT INTO tb_categorias (categoria) VALUES("Vegetarianas");
INSERT INTO tb_categorias (categoria) VALUES("Veganas");
INSERT INTO tb_categorias (categoria) VALUES("Gourmet");

-- Inserindo valores na tabela Pizzas
INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza de Banana com Canela", "Fatias de banana, açúcar, canela e uma cobertura de leite condensado",55.00, "Grande", 1);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza de Calabresa", "Molho de tomate, mussarela, fatias de linguiça calabresa, cebola e azeitonas pretas", 45.00, "Pequena", 2);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id)
VALUES ("Pizza de Frango com Catupiry", "Molho de tomate, mussarela, frango desfiado, catupiry (ou requeijão cremoso)", 60.00 , "Média", 2);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza Vegetariana", "Molho de tomate, mussarela, pimentão, cebola, azeitonas, cogumelos, espinafre e tomate", 50.00 , "Média", 3);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza de Berinjela", "Molho de tomate, mussarela, fatias de berinjela grelhada, pimentão, cebola e azeitonas", 56.00, "Grande", 3);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza Vegana de Legumes", "Base de molho de tomate, cobertura de legumes variados como abobrinha, berinjela, pimentão, cebola e azeitonas, sem queijo ou com queijo vegano.", 55.00, "Pequena", 4);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza de Espinafre e Alho", "Base de molho de tomate, espinafre fresco, alho, tomates cereja e queijo vegano", 65.00, "Grande", 4);

INSERT INTO tb_pizzas (nome,ingredientes,preco,tamanho,categoria_id) 
VALUES ("Pizza Gourmet de Rúcula com Parma", "Molho de tomate, mussarela de búfala, presunto Parma, rúcula fresca, lascas de parmesão e um fio de azeite de oliva", 94.90, "Grande", 5);


-- Listando pizzas com preço MAIOR que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Listando pizzas com preço ENTRE R$ 50,00 e R$ 100,00
SELECT *  FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Listando pizzas que contenham a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%"; 

-- Realizando um INNER JOIN entre as tabelas
SELECT nome,ingredientes,preco,tamanho,tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

-- Realizando um INNER JOIN entre as tabelas retornando apenas personagens da classe Arqueiro
SELECT nome,ingredientes,preco,tamanho,tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.categoria = "Salgadas";


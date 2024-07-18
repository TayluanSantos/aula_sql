-- Consultas SQL avançadas --

use db_quintanda;

select * from tb_produtos order by nome_produto desc;

SELECT * FROM tb_produtos WHERE preco BETWEEN 3.50 AND 8.25;

select * from tb_produtos where nome_produto like "%uva%";

select * from tb_produtos;

show create table tb_produtos;

DESCRIBE tb_produtos;

-- Associações entre Tabelas

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

-- Inserindo dados na Tabela --]

select * from tb_categorias;

insert into tb_categorias (descricao) values ("Temperos"),("Ovos"),("Outros");

-- Modificando a Estrutura da Tabela - Criando o Relacionamento

alter table tb_produtos add categoriaid bigint;

alter table tb_produtos add constraint fk_produtos_categorias 
foreign key (categoriaid) references tb_categorias (id);

-- Associações entre tabelas --

select nome, quantidade, preco , tb_categorias.descricao from tb_produtos 
inner join  tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

SELECT nome, quantidade, preco, tb_categorias.descricao from tb_produtos
left JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoriaid;
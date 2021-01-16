create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo binary not null,
primary key (id)
);

create table tb_produtos(
	id bigint(5) auto_increment,
	nome varchar (255) not null,
	preco decimal not null,
	qtdProduto int not null,
	categoria_id bigint,
	primary key (id),
	foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_categoria (descricao, ativo) values
('aves', 1),
('bovino', 1),
('suino', 1),
('embutidos', 1),
('outros', 1);

insert into tb_produtos (nome, preco, qtdProduto, categoria_id) values
('pe de galinha', 10.00, 50, 5),
('picanha ', 50.00, 30, 3),
('maminha', 48.00, 25, 2),
('linguiça', 45.00, 30, 4),
('apreseuntado', 30.00, 45, 4),
('asinha', 25.00, 35, 1),
('coxa da asa', 25.00, 25, 3),
('filé mignion', 90.00, 35, 2);

select nome, preco from tb_produtos where preco > 50;

select nome, preco from tb_produtos where preco between 3 and 60;

select nome from tb_produtos where nome like('%c%');

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtdProduto, tb_categoria.descricao, tb_categoria.ativo from tb_produtos
join tb_categoria on tb_produtos.categoria_id = tb_categoria.id;

select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao from tb_produtos
join tb_categoria on tb_produtos.categoria_id = tb_categoria.id where tb_produtos.preco > 40;
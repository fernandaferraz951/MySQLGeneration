create database ecomerce;
use ecomerce;

create table tb_produtos(
id bigint(5) auto_increment,
nomeProduto varchar(255) not null,
valorProduto decimal (10,2) not null,
quantidadeProduto  int not null,
marca varchar (255) not null,
 primary key(id)

);
select * from tb_produtos;

insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("sapato" ,30, 5, "moleca");
insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("Ovelhas de pelucia" ,50, 10, "pelucias fofas");
insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("Mochila" ,90, 50, "boa mochila");
insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("Blusa Rosa", 80, 50 , "Holliester");
insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("Blusa Azul", 80, 50, "Fatal Surf");
insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("short jeans", 30, 50, "Biotipo");
insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("Casaco", 50, 30, "Marca Boa");
insert into tb_produtos (nomeProduto, valorProduto, quantidadeProduto, marca) values ("camisola", 30, 20, "Loungerie");

update tb_produtos set valorProduto= 550 where id=9;

select*from tb_produtos where valorProduto >500;
select*from tb_produtos where valorProduto <500;




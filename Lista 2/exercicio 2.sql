create database db_pizzaria_legal;

use db_pizzaria_legal;

select *from tb_categoria;
create table tb_categoria(
id bigint auto_increment, 
categoria varchar (200), 
tipo varchar (200), 
primary key (id)

);

insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("Banana", 45.00, 1, 2);
insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("pickles", 55.00, 1, 3);
insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("brocolis", 55.00, 1, 3);
insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("Calabresa", 85.00, 1, 1);
insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("Atum", 95.00, 1, 1);
insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("brocolis com queijo veg", 75.00, 1, 4);
insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("Portuguesa", 25.00, 1, 1);
insert into tb_pizza (sabores, preco, ativo, categoria_id) values ("Brigadeiro", 27.00, 1, 2);





create table tb_pizza (
id bigint auto_increment,
sabores varchar (120) not null, 
preco decimal (10,2) not null, 
ativo boolean, 
categoria_id bigint, 
primary key (id), 
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (categoria, tipo) values ("normal", "salgado");
insert into tb_categoria (categoria, tipo) values ("normal", "doce");
insert into tb_categoria (categoria, tipo) values ("Vegetariana", "salgada");
insert into tb_categoria (categoria, tipo) values ("Vegana", "salgada");
insert into tb_categoria (categoria, tipo) values ("Vegana", "Doce");
insert into tb_categoria (categoria, tipo) values ("Vegetariana", "Doce");

select tb_pizza.sabores, tb_pizza.preco, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;
select sabores, preco from tb_pizza where preco > 45.00;
select sabores, preco from tb_pizza where preco between 29 and 60;
select sabores from tb_pizza where sabores like ("%c%");
select tb_pizza.sabores, tb_pizza.preco, tb_categoria from tb_pizza

select tb_pizza.sabores,tb_pizza.preco, tb_categoria.tipo from tb_pizza
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.tipo = 'doce';
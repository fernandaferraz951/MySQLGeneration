create database db_servico_rh;

use  db_servico_rh;

create table tb_funcionarios(
id bigint (5) auto_increment,
nome varchar (300) not null,
funcao varchar (300) not null, 
idade int not null,
salario float not null,
primary key (id)




);



select * from tb_funcionarios;

insert into tb_funcionarios (nome, funcao, idade, salario) values ("Lais", "Desenvolvedora", 20, 12000);
insert into tb_funcionarios (nome, funcao, idade, salario) values ("Fernanda", "Gerente", 22, 13000);
insert into tb_funcionarios (nome, funcao, idade, salario) values ("Pedro", "Executivo de contas", 25, 10000);
insert into tb_funcionarios (nome, funcao, idade, salario) values ("João Victor", "Analista de DB", 30, 8000);
insert into tb_funcionarios (nome, funcao, idade, salario) values ("Rafaela", "Desenvolvedora", 25, 12000);

update tb_funcionarios set salario =1500 where id =2;
update tb_funcionarios set funcao="Estagiaria" where id=2;

select *from  tb_funcionarios where salario < 2000;
select *from  tb_funcionarios where salario >= 2000;

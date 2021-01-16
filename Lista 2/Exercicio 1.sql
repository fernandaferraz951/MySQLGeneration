create database db_generation_game_online;

use db_generation_game_online;


create table tb_classe(
nomeclass varchar (255) not null, 
elementclass varchar (255) not null, 
primary key (nomeclass)


);

insert into tb_classe (nomeclass, elementclass) values ("Pyro", "Fogo");
insert into tb_classe (nomeclass, elementclass) values ("Hydro", "Agua");
insert into tb_classe (nomeclass, elementclass) values ("Geo", "Terra");
insert into tb_classe (nomeclass, elementclass) values ("Electro", "Raio");
insert into tb_classe (nomeclass, elementclass) values ("Anemo", "Vento");
select * from tb_classe;



create table tb_personagens(
id bigint (5) auto_increment,
personagemname varchar (255) not null, 
atkPersonagem decimal (10,5) not null, 
defPersonagem decimal (10,5) not null, 
classePersonagem varchar (255) not null, 
primary key (id), 
foreign key (classePersonagem) references tb_classe (nomeclass)
);


select*from tb_personagens;
insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Diluc",8000.0,1000.0,"Pyro");
insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("ciluc",8000.0,1000.0,"Pyro");

insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Venti",1000.0,2000.0,"Anemo");
insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Venti",1000.0,2000.0,"Anemo");
insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Xiao",.0,7000.0,"Anemo");

insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Zhongli",1500.0,2000.0,"Geo");
insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Razor",7000.0,2000.0,"Electro");
insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Mona",1000.0,3000.0,"Hydro");
insert into tb_personagens(personagemname, atkPersonagem, defPersonagem, classePersonagem) values ("Childe",5000.0,1500.0,"Hydro");





select* from tb_classe inner join tb_personagens on tb_classe.nomeclass =tb_personagens.classePersonagem;

select* from tb_personagens where atkPersonagem >2000;
select *from tb_personagens where defPersonagem <=1000 and defPersonagem <=2000;
select *from tb_personagens where classePersonagem ="Pyro";
select*from tb_personagens where personagemname LIKE "c%";




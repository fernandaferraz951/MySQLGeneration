create database aluno_db;
use aluno_db;





create table listadealunos(



id bigint (5) auto_increment, 
NomeAlu varchar (255) not null, 
matricula varchar (255) not null,
notalu int not null,
turma int not null, 
sala varchar (255) not null,
primary key (id)
);

select * from listadealunos;

insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("Erick",123, 10, 2, 10);
insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("Rafa",125, 10, 2, 10);
insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("Lais",127, 10, 2, 10);
insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("Ewerton",124, 8, 2, 10);
insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("Gustavo",128, 7, 2, 10);
insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("Vanessa",129, 3, 2, 10);
insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("Miguel",1283, 2, 2, 10);
insert into listadealunos (NomeAlu, matricula, notalu, turma, sala) values ("JJ",126, 10, 2, 10);


select * from listadealunos where notalu <7;
select * from listadealunos where notalu >7;

update listadealunos set notalu =5 where id=3







create database db_escola;
use db_escola;

create table tb_estudantes(
ID bigint auto_increment,
Nome varchar(255) not null,
Idade int not null,
Ensino varchar(255) not null,
Turma int not null,
Nota decimal(6,1) not null,
primary key(ID)
);

select * from tb_estudantes;

insert into tb_estudantes(nome,idade,ensino, turma, nota) value("Jonatas",17,"3 ano", 04, 7.5);
insert into tb_estudantes(nome,idade,ensino, turma, nota) value("Andresa",16,"2 ano", 03, 10.00);
insert into tb_estudantes(nome,idade,ensino, turma, nota) value("Daniela",16,"2 ano", 03, 7.0);
insert into tb_estudantes(nome,idade,ensino, turma, nota) value("Kelvin",17,"3 ano", 04, 9.0);
insert into tb_estudantes(nome,idade,ensino, turma, nota) value("Leticia",17,"3 ano", 02, 5.0);
insert into tb_estudantes(nome,idade,ensino, turma, nota) value("Olivia",17,"3 ano", 02, 8.0);
insert into tb_estudantes(nome,idade,ensino, turma, nota) value("João",15,"1 ano", 01, 7.5);
insert into tb_estudantes(nome,idade,ensino, turma, nota) value("Patricia",15,"1 ano", 01, 4.0);

select * from tb_estudantes where nota > 7.0;
select * from tb_estudantes where nota < 7.0;

update tb_estudantes set nota = 6.0 where id = 8;
create database db_rh;
use db_rh;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
admissão int not null,
aalario int not null,
vt varchar(255) not null,
primary key(id)
);

insert into tb_colaboradores(nome,cargo,admissão,aalario,vt) value("Joel","Operador",5, 2.000, "Sim");
insert into tb_colaboradores(nome,cargo,admissão,aalario,vt) value("João","Estagiario",10, 1.500, "Sim");
insert into tb_colaboradores(nome,cargo,admissão,aalario,vt) value("Claudia","Assistente",15, 2.500, "Sim");
insert into tb_colaboradores(nome,cargo,admissão,aalario,vt) value("Caroline","Supervisora",5, 3.800, "Sim");
insert into tb_colaboradores(nome,cargo,admissão,aalario,vt) value("Luzia","Gerente",5, 4.600, "Não");

select * from tb_colaboradores;
select * from tb_colaboradores where aalario > 2.000;
select * from tb_colaboradores where aalario < 2.000;

alter table tb_colaboradores modify aalario decimal(6,3);

update tb_colaboradores set aalario = 5.000 where id = 6;
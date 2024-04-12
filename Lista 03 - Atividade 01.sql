create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
ID bigint auto_increment,
Guerreiro varchar(255) not null,
Categoria varchar(255) not null,
primary key(ID)
);

create table tb_personagens(
ID bigint auto_increment,
Nome varchar(255) not null,
Poder varchar(255) not null,
Ataque decimal(6,3),
Defesa decimal(6,3),
primary key(ID)
);

select * from tb_classes;
select * from tb_personagens;

alter table tb_personagens add classes_id bigint;
alter table tb_personagens add constraint fk_personagens_classes 
foreign key(classes_id) references tb_classes(id);

insert into tb_classes(Guerreiro, Categoria) value("Barbaro", "Machado");
insert into tb_classes(Guerreiro, Categoria) value("Espadachim", "Espada");
insert into tb_classes(Guerreiro, Categoria) value("Paladino", "Martelo");
insert into tb_classes(Guerreiro, Categoria) value("Arqueiro", "Arco");
insert into tb_classes(Guerreiro, Categoria) value("Mago", "Majado");

insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Samurai", "Katana", 2.000, 2.000, 2);
insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Assassino", "Martelada", 3.500, 3.000, 3);
insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Bruxa", "Maldição", 1.500, 1.000, 5);
insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Elfo", "Flexada", 2.000, 1.000, 4);
insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Viking", "Golpe", 2.500, 3.000, 1);
insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Espartano", "Adaga", 2.500, 2.000, 2);
insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Feiticeiro", "Feiticço", 1.700, 1.000, 5);
insert into tb_personagens(nome, poder, ataque, defesa, classes_id) value("Ninja", "Punhal", 1.900, 2.000, 2);

select * from tb_personagens where ataque > 2.000;
select * from tb_personagens where defesa between 1.000 and 2.000;
select * from tb_personagens where nome like  "%c%";

select * from tb_personagens
inner join tb_classes
on tb_classes.id = tb_personagens.classes_id;

select * from tb_personagens
inner join tb_classes
on tb_classes.id = tb_personagens.classes_id
where tb_classes.guerreiro = "Espadachim";


create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
ID bigint auto_increment,
Tradicional varchar(255) not null,
Premium varchar(255) not null,
primary key(ID)
);

create table tb_pizzas(
ID bigint auto_increment,
Nome varchar(255) not null,
Tamanho varchar(255) not null,
Massa varchar(255) not null,
Preço decimal(6,2),
primary key(ID)
);

select * from tb_categorias;
select * from tb_pizzas;

alter table tb_pizzas add categorias_id bigint;

alter table tb_pizzas add constraint fk_pizzas_categorias
foreign key(categorias_id) references tb_categorias(id);

insert into tb_categorias(Tradicional, Premium) value("Salgada", "-");
insert into tb_categorias(Tradicional, Premium) value("Doce", "-");
insert into tb_categorias(Tradicional, Premium) value("-", "Vegetariana");
insert into tb_categorias(Tradicional, Premium) value("-", "Vegana");
insert into tb_categorias(Tradicional, Premium) value("-", "Sem Gluten");

insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Margherita", "Grande", "Normal", 83.00, 1);
insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Quattro Formaggi", "Grande", "Normal", 96.00, 1);
insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Funghi", "Grande", "Normal", 105.00, 3);
insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Rúcula Com Tomate Seco", "Grande", "Fina", 75.00, 4);
insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Zuchine", "Grande", "Normal", 96.00, 3);
insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Nutella Com Morango", "Pequena", "Fina", 40.00, 2);
insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Brie Com Geleia de Pimenta", "Pequena", "Fina", 65.00, 2);
insert into tb_pizzas(Nome, Tamanho, Massa, Preço, categorias_id) value("Kinder", "Pequena", "Fina", 43.00, 2);

select * from tb_pizzas where Preço > 45.00;
select * from tb_pizzas where Preço between 50.00 and 100.00;
select * from tb_pizzas where nome like "%m%";

select * from tb_pizzas
inner join tb_categorias
on tb_categorias.id = tb_pizzas.categorias_id;

select * from tb_pizzas
inner join tb_categorias
on tb_categorias.id = tb_pizzas.categorias_id
where tb_categorias.tradicional = "Doce";
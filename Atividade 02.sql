create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
ID bigint auto_increment,
Nome varchar(255) not null,
Fornecedor varchar(255) not null,
Quantidade int not null,
Preco decimal(6,2) not null,
Imposto varchar(255) not null,
primary key(ID)
);

select * from tb_produtos;

insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Pendrive","Fornecedor 1",25, 45.00, "2,30%");
insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Bateria Portatil","Fornecedor 1",15, 100.00, "2,30%");
insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Carregador","Fornecedor 1",100, 65.00, "2,30%");
insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Cabo USB","Fornecedor 1",90, 35.00, "2,30%");
insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Fone Bluetooth","Fornecedor 1",50, 75.00, "2,30%");
insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Capa Celular","Fornecedor 2",150, 25.00, "1,60%");
insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Pelicula Vidro","Fornecedor 2",200, 60.00, "1,60%");
insert into tb_produtos(nome,fornecedor,quantidade,preco,imposto) value("Pelicula 3D","Fornecedor 2",160, 50.00, "1,60%");

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 45.00 where id = 4;
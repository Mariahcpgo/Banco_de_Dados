-- Criar o Banco de dados
create database db_quitanda;

-- Selecionando o Banco de Dados
use db_quitanda;

-- Criando nossa primeira Tabela
create table tb_produtos(
 id bigint auto_increment,
 nome varchar(255) not null,
 quantidade int,
 preco decimal not null,
 primary key(id)
);

-- Selecionando dados da Tabela
select * from tb_produtos;

-- Inserindo dados na Tabela
insert into tb_produtos(nome,quantidade,preco) values ("Brócolis",20,5);
insert into tb_produtos(nome,quantidade,preco) values ("Morango",40,9.99);
insert into tb_produtos(nome,preco) values ("Ameixa",5);
insert into tb_produtos(nome, quantidade, preco) values ("Tomate",100, 8.00);
insert into tb_produtos(nome, quantidade,  preco) values ("Maçã",20, 5.00);
insert into tb_produtos(nome, quantidade,  preco) values ("Laranja",50, 10.00);
insert into tb_produtos(nome, quantidade,  preco) values ("Banana",200, 12.00);
insert into tb_produtos(nome, quantidade,  preco) values ("Uva",1200, 30.00);
insert into tb_produtos(nome, quantidade, preco) values ("Abacaxi",500, 2000.99);

-- Selecionando dados da Tabela com critérios de filtragem
select nome, preco, quantidade from tb_produtos;

select * from tb_produtos where nome = "Tomate"; -- Operadores Relacionais
select * FROM tb_produtos where preco > 5.00 and quantidade < 100;  -- Operadores Lógicos

-- DDL Modificando a Estrutura da Tabela
alter table tb_produtos modify preco decimal(6,2); -- Modificando a estrutura de uma Coluna
alter table tb_produtos drop quantidade; -- Excluindo uma Coluna
drop database db_quitando; -- Apagar um Banco de dados

-- DML Atualizar e deletar
update tb_produtos set preco = 9.99 where Id = 6; -- Atualizando dados na Tabela
delete from tb_produtos where nome = "Abacaxi"; -- Apagando dados na Tabela

-- Definição dos esquemas 
describe tb_produtos; 

set SQL_SAFE_UPDATES = 0; -- Trava de segurança



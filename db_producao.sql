--Database
create database producaodb
go

use producaodb
go

--Tables
create table fabricantes(
codfabricante smallint primary key identity(1,1),
nomefabricante varchar(30)
);

create table produtos(
codproduto int primary key identity(10,1),
nomeproduto varchar(30),
codfabricante smallint,
foreign key (codfabricante) references fabricantes(codfabricante)
);

create table lotes(
numlote int primary key identity(10,1),
datavalidade date,
precounitario decimal(10,2),
quantidade smallint,
valorlote decimal(10,2),
codproduto int,
foreign key(codproduto) references produtos(codproduto)
);


--Inserts
insert into fabricantes(nomefabricante) values
('Clear'),
('Rexona'),
('Jhonson & Jhonson'),
('Coleston')

insert into produtos(nomeproduto, codfabricante) values
('Sabonete em barra',2),
('Shampoo Anticaspa',1),
('Desodorante Aerosol Neutro',2),
('Sabonete Liquido',2),
('Protetor Solar 30',3),
('Shampoo 2 em 1',2),
('Desodorante Aerosol Morango', 2),
('Shampoo Anticaspa',2),
('Protetor Solar 60',3),
('Desodorante Rollon',1)


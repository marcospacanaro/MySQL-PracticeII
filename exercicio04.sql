create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
	id int(3) AUTO_INCREMENT primary key not null,
    nome_Acouge varchar(100),
    endereco_Acouge varchar(100)    
);

insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Cidade das Carnes", "Rua das Carnes");
insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Boi Bravo", "Rua Peixoto Gomide");
insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Carnes Premium", "Rua Paulistânia");
insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Odeio Vegano", "Rua Alfredo Alvaró");
insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Futuro Churrasco", "Rua Padre Bizantino XV");
insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Carnes Dez", "Rua Bruno Willian");
insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Casa da Carne", "Rua Ícaro Duarte");
insert into tb_categoria (nome_Acouge, endereco_Acouge) values ("Açougue Boi Manso", "Rua Matheus Alexandrino");

select * from tb_categoria;
drop table tb_categoria;

create table tb_produto (
	id int(3) AUTO_INCREMENT primary key not null,
    nome_Produto varchar(100),
	preco_Produto int(3.2),
    categoria_Produto varchar(100),
	carne_Animal varchar(100),
    categoria_id int (3),
	foreign key (categoria_id) references tb_categoria (id)
);

select * from tb_produto;
drop table tb_produto;

insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Acém", 54.30, "Carne de Primeira", "Carne Bovina", 1);
insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Alcatra", 35.05, "Carne de Primeira", "Carne Bovina", 1);
insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Asa de Frango", 15.53, "Carne de Primeira", "Carne de Frango", 2);
insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Bacon", 59.50, "Carne de Primeira", "Carne Suína", 3);
insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Bisteca", 16.38, "Carne de Primeira", "Carne Suína", 3);
insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Capa de Filé", 53.96, "Carne de Primeira", "Carne Bovina", 1);
insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Carne Moída", 24.49, "Carne de Segunda", "Carne Bovina", 1);
insert into tb_produto (nome_Produto, preco_Produto, categoria_Produto, carne_Animal, categoria_id) values ("Fígado", 14.15, "Carne de Segunda", "Carne Bovina", 1);

select * from tb_produto;
select * from tb_produto where preco_Produto > 50;
select * from tb_produto where preco_Produto between 3 and 60;
select * from tb_produto where nome_Produto like '%c%';
select * from tb_produto a inner join tb_categoria ct on categoria_id = ct.id; 
select * from tb_produto a inner join tb_categoria ct on categoria_id = ct.id where nome_Produto like "%c%";
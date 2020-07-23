create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
	id int(3) AUTO_INCREMENT primary key not null,
    nome_Pizzaria varchar(100),
    anosFuncionamento_Pizzaria int(3)
);

insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Pizzaria Legal", 10);
insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Nostra Pizza", 11);
insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Ligue Pizza", 5);
insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Pizzaria Marotto", 6);
insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Gianotti Pizza", 25);
insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Pizza TOP", 2);
insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Chama na Pizza", 4);
insert into tb_categoria (nome_Pizzaria, anosFuncionamento_Pizzaria) values ("Pizza Lenha", 12);

select * from tb_categoria;

create table tb_pizza(
	id int(3) AUTO_INCREMENT primary key not null,
    nome_Pizza varchar(100),
    tipo_Pizza varchar(100),
    tamanho_Pizza varchar(100),
    preco_Pizza int(3.2),
    pizza_id int(3),
    foreign key (pizza_id) references tb_categoria (id)
);

insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Mussarela", "Salgada", 29.00, "Pizza Grande", 1);
insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Calabresa", "Salgada", 51.90, "Pizza Normal", 2);
insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Frango Com Catupiry", "Salgada", 53.90, "Pizza Normal", 2);
insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Portuguesa", "Salgada", 40.90, "Pizza Brotinho", 3);
insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Palmito", "Salgada", 45.90, "Pizza Grande", 1);
insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Brigadeiro", "Doce", 49.90, "Pizza Grande", 1);
insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Sorvete", "Doce", 59.90, "Pizza Normal", 2);
insert into tb_pizza (nome_Pizza, tipo_Pizza, preco_Pizza, tamanho_Pizza, pizza_id) values ("Doce de Leite", "Doce", 69.90, "Pizza Brotinho", 3);

select * from tb_pizza;
select * from tb_pizza where preco_Pizza > 45;
select * from tb_pizza where preco_Pizza between 29 and 60;
select * from tb_pizza where nome_Pizza like "%c%";
select * from tb_pizza p inner join tb_categoria c on p.pizza_id = c.id;
select * from tb_pizza p inner join tb_categoria c on p.pizza_id = c.id where tipo_Pizza like "%Salgada%";
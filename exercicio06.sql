create database db_generation_game_online;
use db_generation_game_online; 

create table tb_classe (
id int(3) primary key auto_increment,
nome varchar(255),
armaInicial varchar(255));

create table tb_personagem(
id int(3) primary key auto_increment,
nome varchar(255),
pontosVida int(3),
danoAtaque int(3),
danoHabilidade int(3),
classeId int(3),
foreign key (classeId) references tb_Classe (Id));

insert into tb_classe (nome,armaInicial) values ("Bruxo","Grimório");
insert into tb_classe (nome,armaInicial) values ("Sacerdote","Cajado");
insert into tb_classe (nome,armaInicial) values ("Cavaleiro","Espada de duas mãos");
insert into tb_classe (nome,armaInicial) values ("Ladino","Adagas");
insert into tb_classe (nome,armaInicial) values ("Arqueiro","Arco e flecha");

insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Kirito",100,60,10,3);
insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Anduin",25,10,60,2);
insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Valeera",60,40,20,4);
insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Gul'dan",30,5,80,1);
insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Rexxar",100,25,10,5);
insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Alvez",150,150,9,3);
insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Legolas",200,50,20,5);
insert into tb_personagem (nome,pontosVida,danoAtaque,danoHabilidade,classeId) values ("Mascah",30,30,170,2);

select * from tb_personagem where danoAtaque > 50;
select * from tb_personagem where danoHabilidade between 50 and 100;
select * from tb_personagem where nome like '%ca%';
select * from tb_personagem p inner join tb_classe c on p.classeId = c.id;
select * from tb_personagem p inner join tb_classe c on p.classeId = c.id where c.nome = 'Arqueiro';
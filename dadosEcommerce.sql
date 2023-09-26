create database db_ecommerce;
use db_ecommerce;

create table tb_bebidas(
     id bigint auto_increment,
        nome varchar(255) not null,
        classificacao varchar(255) not null,
        tipo varchar(255) not null,
        etiqueta varchar(255) not null,
        estoque decimal not null,
        primary key (id)
);

insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Ballantines", "Alcoólico", "Whisky Escoces", "Amarela", "760");
insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Jack Daniels", "Alcoólico", "Whisky amaricano", "Cinza", "520");
insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Maker´s Mark", "Alcoólico", "Whisky americano", "Cinza", "277");
insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Catena Malbec 2019", "Alcoólico", "Vinho Tinto", "Vermelho", "266");
insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Chablis AOC Réserve de Vaudon", "Alcoólico", "Vinho Branco", "Azul", "198");
insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Espumante Petalo 1l", "Alcoólico", "Moscatel", "Rosa", "456");
insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Champagne Veuve Clicquot Brut", "Alcoólico", "Champagne Frances", "Branco", "301");
insert into tb_bebidas(nome, classificacao, tipo, etiqueta, estoque)
values ("Tequila El Jimador Blanco", "Alcoólico", "Tequila Mexicana", "Verde", "422");

select * from tb_bebidas;

select * from tb_bebidas where estoque > 500;

select * from tb_bebidas where estoque < 500;

update tb_bebidas set estoque = 499 where id = 7;

select * from tb_bebidas where id = 7;
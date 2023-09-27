create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
   id bigint auto_increment,
     nome varchar(255) not null,
     descricao varchar(255) not null,
     primary key (id)
);

create table tb_personagens(
   id bigint auto_increment,
   nome varchar(255) not null,
   poderAtaque int not null,
   poderDefesa int not null,
   nivel varchar(10) not null,
   classes_id bigint not null,
   primary key (id),
   foreign key (classes_id) references tb_classes (id)
);

insert into tb_classes (nome, descricao) values
('Guerreiro', 'Um lutador corajoso com habilidades de combate corpo a corpo.'),
('Mago', 'Um conjurador de magias poderosas com conhecimento arcano.'),
('Arqueiro', 'Um mestre em combate à distância com habilidades precisas.'),
('Ladrão', 'Um especialista em furtividade e habilidades furtivas.'),
('Clérigo', 'Um curandeiro divino com a capacidade de conjurar bênçãos.');

insert into tb_personagens (nome, poderAtaque, poderDefesa, nivel, classes_id) values
('Lâmina Sombria', 3000, 2500, 'Iniciante', 1),
('Feiticeiro Relâmpago', 4200, 1800, 'Iniciante', 2),
('Arqueiro da Aurora', 3500, 3000, 'Iniciante', 3),
('Assassino do Crepúsculo', 2800, 3200, 'Iniciante', 4),
('Mago da Tempestade', 4800, 2000, 'Iniciante', 5),
('Cavaleiro da Justiça', 5200, 4000, 'Avançado', 1),
('Oráculo das Sombras', 4500, 3800, 'Avançado', 2),
('Guardião da Terra', 5000, 4500, 'Avançado', 3);

select * from tb_personagens where poderAtaque > 2000;

select * from tb_personagens where poderDefesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select tb_personagens.id, tb_personagens.nome, tb_classes.nome from tb_personagens
inner join tb_classes ON tb_personagens.classes_id = tb_classes.id;

select tb_personagens.id, tb_personagens.nome, tb_classes.nome from tb_personagens
inner join tb_classes ON tb_personagens.classes_id = tb_classes.id where tb_classes.nome = "Arqueiro";
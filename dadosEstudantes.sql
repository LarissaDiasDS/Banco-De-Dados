create database db_estudantes;
use db_estudantes;

create table tb_alunos(
   id bigint auto_increment,
     nome varchar(255) not null,
     niveldoEnsino varchar(255) not null,
     habAcademicas varchar(255) not null,
     faltas int not null,
     mediaProvas int not null,
     primary key (id)
);

insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Maria", "Fundamental", "Regular", "6", "7.0");
insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Joao", "Medio", "Otimo", "2", "9.0");
insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Helena", "Medio", "Regular", "9", "5.0");
insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Pedro", "Fundamental", "Pessimo", "22", "4.0");
insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Ingrid", "Fundamental", "Otimo", "0", "10.0");
insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Livia", "Medio", "pessimo", "12", "3.0");
insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Ricardo", "Medio", "Otimo", "1", "10.0");
insert into tb_alunos(nome, niveldoEnsino, habAcademicas, faltas, mediaProvas)
values ("Leticia", "Fundamental", "Otimo", "8", "8.0");

select * from tb_alunos;

select * from tb_alunos where mediaProvas > 7.0;

select * from tb_alunos where mediaProvas < 7.0;

update tb_alunos set mediaProvas = 6 where id = 6;

select * from tb_alunos where id = 6;
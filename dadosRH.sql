create database db_RH;

use db_RH;

create table tb_colaboradores(
   id bigint auto_increment,
     nome varchar(255) not null,
     cargo varchar(255) not null,
     matricula int not null,
     remuneracao decimal not null,
     contrato varchar(255),
     primary key (id)
   );
   
   insert into tb_colaboradores(nome, cargo, matricula, remuneracao, contrato)
   values ("Marcos", "Padeiro", "2411", "3500.00", "Temporario");
   insert into tb_colaboradores(nome, cargo, matricula, remuneracao, contrato)
   values ("Lara", "Eng. Software pleno", "9212", "8900.50", "CLT");
   insert into tb_colaboradores(nome, cargo, matricula, remuneracao, contrato)
   values ("Maria", "Estagiario", "1103", "1560.00", "Tempo Determinado");
   insert into tb_colaboradores(nome, cargo, matricula, remuneracao, contrato)
   values ("Elisa", "Desenvolvedor jr", "5547", "2850.00", "Freelancer");
   insert into tb_colaboradores(nome, cargo, matricula, remuneracao, contrato)
   values ("Pedro", "Jovem Aprendiz", "0982", "1390.00", "Tempo Determinado");
   
   select * from tb_colaboradores;
   
   select * from tb_colaboradores where remuneracao > 2000.00;
   
   select * from tb_colaboradores where remuneracao < 2000.00;
   
   update tb_colaboradores set remuneracao = 1620.00 where id = 5;
   
   select * from tb_colaboradores where id = 5;
   
  
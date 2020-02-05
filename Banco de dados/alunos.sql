use test;
create table tb_alunos
(
   id_aluno int primary key auto_increment,
   nome varchar(50),
   email varchar(50),
   senha varchar(50),
   skype varchar(50),
   celular varchar(50)   
);
select * from tb_alunos;


insert into tb_alunos (id_aluno, nome, email, senha, skype, celular) values ('1', 'fabio', 'fabio', '123', 'fabio', 'fabio');
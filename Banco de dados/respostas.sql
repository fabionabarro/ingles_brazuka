use test;
create table tb_respostas
(
   id_materia int (50),
   id_pergunta int (50),
   resposta_1 varchar(20),
   resposta_2 varchar(20),
   resposta_3 varchar(20),
   resposta_4 varchar(20)
);
#Matéria1
#Pergunta1
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (1, 1, 'Certo', 'Errado', 'Errado', 'Errado');
#Pergunta2
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (1, 2, 'Errado', 'Certo', 'Errado', 'Errado');
#Pergunta3
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (1, 3, 'Errado', 'Errado', 'Certo', 'Errado');
#Pergunta4
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (1, 4, 'Errado', 'Errado', 'Errado', 'Certo');

#Matéria2
#Pergunta1
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (2, 1, 'Certo', 'Errado', 'Errado', 'Errado');
#Pergunta2
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (2, 2, 'Errado', 'Certo', 'Errado', 'Errado');
#Pergunta3
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (2, 3, 'Errado', 'Errado', 'Certo', 'Errado');
#Pergunta4
insert into tb_respostas (id_materia, id_pergunta, resposta_1, resposta_2, resposta_3, resposta_4) 
        values (2, 4, 'Errado', 'Errado', 'Errado', 'Certo');

select * from tb_respostas;


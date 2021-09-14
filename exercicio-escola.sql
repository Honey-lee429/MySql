CREATE DATABASE escola;
use escola;
CREATE TABLE aluno (
	id bigint(5)auto_increment,
    nome varchar(20)not null,
    nota int not null,
    falta int not null,
    media double,
    primary key(id)
);
insert into aluno (nome, nota, falta, media) values ("Denise", 10, 0, 9.5);
insert into aluno (nome, nota, falta, media) values ("Ana", 10, 0, 9.5);
insert into aluno (nome, nota, falta, media) values ("Bryan", 10, 0, 9.5);
insert into aluno (nome, nota, falta, media) values ("Felipe", 10, 0, 9.5);
insert into aluno (nome, nota, falta, media) values ("Gabriela", 8, 1, 9.5);
insert into aluno (nome, nota, falta, media) values ("Tainá", 7, 2, 8);
insert into aluno (nome, nota, falta, media) values ("Esdras", 6, 3, 7.5);
insert into aluno (nome, nota, falta, media) values ("Gustavo", 5, 4, 6.5);

select * from aluno
select * from aluno where nota > 7
select * from aluno where nota < 7
update aluno set nome = "Day" where id = 12
update aluno set nome = "Mabiá" where id = 7

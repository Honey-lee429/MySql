create database db_rh
use db_rh
CREATE TABLE tb_funcionarios (
id bigint(5)auto_increment,
nome varchar(40) not null,
salario decimal(10,2) not null,
endereco varchar(40),
idade int,
inicio date,
primary key(id)
);

INSERT INTO tb_funcionarios (nome, salario, endereco, idade, inicio) VALUES ("Thais", 5500, "R.xxx", 16, '2000-05-08');
INSERT INTO tb_funcionarios (nome, salario, endereco, idade, inicio) VALUES ("Mara", 2500, "Av. asdf", 25, '2000-05-08');
INSERT INTO tb_funcionarios (nome, salario, endereco, idade, inicio) VALUES ("Edu", 3300, "Rua piaia", 30, '2000-05-08');
INSERT INTO tb_funcionarios (nome, salario, endereco, idade, inicio) VALUES ("Vini", 1900, "Av. paulista", 54, '2000-05-08');
INSERT INTO tb_funcionarios (nome, salario, endereco, idade, inicio) VALUES ("Wendel", 10300, "R. iaia", 85, '2000-05-08');

select * from tb_funcionarios;
update tb_funcionarios set salario = 1200 where id = 3
select nome from tb_funcionarios
select * from tb_funcionarios where salario > 2000
select * from tb_funcionarios where salario < 2000
delete from tb_funcionarios where id = 1
alter table tb_funcionarios add column sobrenome varchar(20) after nome
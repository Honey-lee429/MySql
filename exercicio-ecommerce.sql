create database ecommerce
use ecommerce
create table produtos (
	produto bigint(5) auto_increment,
    nome varchar(20) not null,
    marca varchar(20),
    preco decimal(10,2) not null,
    primary key(produto)
);
INSERT INTO produtos (nome,marca,preco) VALUES ("Sapato","babu","60.53");
INSERT INTO produtos (nome,marca,preco) VALUES ("Camisa","xpto",58.18);
INSERT INTO produtos (nome,marca,preco) VALUES ("Meias","baby shark",58.18);
INSERT INTO produtos (nome,marca,preco) VALUES ("Meias","tatu",100.50);
INSERT INTO produtos (nome,marca,preco) VALUES ("Calça","ovelha",200);

select * from produtos
update produtos set preco = 501 where id = 1
update produtos set preco = 800 where id = 2
update produtos set preco = 600 where id = 3
update produtos set preco = 100.60 where id = 4
update produtos set preco = 200.99 where id = 5	
select * from produtos where preco > 500
select * from produtos where preco < 500
select * from produtos where nome like "%c%"
select nome,marca from produtos

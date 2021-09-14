CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id_cat INT AUTO_INCREMENT,
    tipo VARCHAR(40) NOT NULL,
    receita BOOLEAN,
    PRIMARY KEY(id_cat)
);
CREATE TABLE tb_produto(
	id INT AUTO_INCREMENT,
    nome VARCHAR(40),
    preco DECIMAL(4,2),
    ingrediente VARCHAR(40),postagem
    formato VARCHAR(40),
    fk_prod INT,
    primary key(id),
    FOREIGN KEY (fk_prod) REFERENCES tb_categoria (id_cat)
);

INSERT INTO tb_categoria (tipo, receita) VALUES
	("beleza", false),
    ("remedio", true);
    
INSERT INTO tb_produto (nome, preco, ingrediente, formato, fk_prod) VALUES
	("shampoo", 10.00, "sal", "líquido", 1),
    ("creme corporal", 12.50, "hidratante", "líquido", 1),
    ("condicionador", 90.00, "sal", "barra", 1),
    ("escova de dente", 14.00, "madeira", "sólido", 1),
    ("doril", 17.65, "cloroquina", "drágea", 2),
    ("xarope", 50.65, "corjsor", "líquido", 2),
    ("injeção", 26.54, "coquetel", "agulha", 2);
    
SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco >= 12 and preco <=45;
SELECT * FROM tb_produto where nome like "s%";
SELECT nome, tipo FROM tb_produto INNER JOIN tb_categoria on tb_produto.fk_prod = tb_categoria.id_cat;
    
    
    
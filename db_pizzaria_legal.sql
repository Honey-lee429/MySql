CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizza (
	id INT AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL, 
    preco decimal(10,2),
	borda boolean,
    fk_pizza INT,
    PRIMARY KEY(id),
    FOREIGN KEY (fk_pizza) REFERENCES tb_categoria (id_cat)
);
CREATE TABLE tb_categoria(
	id_cat INT AUTO_INCREMENT,
    tipo VARCHAR(40),
    tamanho VARCHAR(10),
    PRIMARY KEY (id_cat)
);

INSERT INTO tb_categoria (tipo, tamanho) VALUES
		("doce", "broto"),
        ("salgada1", "broto"),
        ("salgada2", "casal"),
        ("salgada3", "família");
        
INSERT INTO tb_pizza (nome, preco, borda, fk_pizza) VALUES
		("frango c/ catupiri", 29.50, false, 2),
        ("marguerita", 30.00, false, 3),
        ("quatro queijos", 35.65, true, 3),
        ("abóbora c/ queijo", 45.30, true, 4),
        ("Banana c/ leite-condesado", 50.00, false, 1),
        ("morango c/ nutella", 40.99, false, 1),
        ("shitake", 60.00, true, 4);
        
SELECT * FROM tb_pizza where preco > 45;
SELECT * FROM tb_pizza where preco >= 35 and preco <= 50;
SELECT * FROM tb_pizza where nome like "%q%";
SELECT nome, preco FROM tb_categoria INNER JOIN tb_pizza on tb_categoria.id_cat = tb_pizza.fk_pizza where tipo = "doce";
        
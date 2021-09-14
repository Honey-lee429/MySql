CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
	id_cat INT AUTO_INCREMENT,
    cor VARCHAR(40) NOT NULL,
    tamanho INT,
    maduro BOOLEAN,
    PRIMARY KEY (id_cat)
);
CREATE TABLE tb_produto(
	id INT auto_increment,
    nome VARCHAR(40),
    semente boolean,
    casca VARCHAR(40),
	fk_prod INT,
    PRIMARY KEY(id),
	FOREIGN KEY (fk_prod) REFERENCES tb_categoria (id_cat)
);

INSERT INTO tb_categoria (cor, tamanho, maduro) VALUE 
	("vermelho", 2, true),
    ("amarelo", 3, true),
    ("roxo", 1, faLse),
    ("verde", 3, true),
    ("rosa", 2, true);
    
 INSERT INTO tb_produto (nome, semente, casca, fk_prod) VALUES 
	("maça", true, "como c/ casca", 1),
    ("manga", true, "como s/ casca", 1),
    ("banana", false, "como s/ casca", 2),
    ("maracujá", true, "como s/ casca", 2),
    ("uva", true, "como c/ casca", 3),
    ("jabuticaba", true, "como c/ casca", 3),
    ("maça", true, "como c/ casca", 4),
	("pitaia", true, "como s/ casca", 5);
    
SELECT * FROM tb_produto WHERE semente = false;
SELECT nome, cor FROM tb_produto INNER JOIN tb_categoria on tb_produto.fk_prod = tb_categoria.id_cat where cor like "v%";
SELECT nome AS Funcionario, t
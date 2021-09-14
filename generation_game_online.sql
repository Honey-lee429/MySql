CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagem (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    poder_de_ataque INT,
    poder_de_defesa INT NOT NULL,
    fk_classe BIGINT(10),
    PRIMARY KEY (id),
	FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);

CREATE TABLE tb_classe(
	id_classe bigint(5) AUTO_INCREMENT,
    classe VARCHAR(40),
    arma_utilizada VARCHAR(8) NOT NULL,
    PRIMARY KEY(id_classe)
);

INSERT INTO tb_classe (classe, arma_utilizada) VALUES ("mago", "livro");
INSERT INTO tb_classe (classe, arma_utilizada) VALUES ("arqueiro", "flecha");
INSERT INTO tb_classe (classe, arma_utilizada) VALUES ("mercador", "machado");
INSERT INTO tb_classe (classe, arma_utilizada) VALUES ("gatuno", "faca");
INSERT INTO tb_classe (classe, arma_utilizada) VALUES ("sniper", "revolver");

INSERT INTO tb_personagem (nome, poder_de_ataque, poder_de_defesa, fk_classe) 
		 ("Cachorro", 5000, 8000, 1),
		 ("gato", 2000, 20000, 2),
		 ("cavalo", 1000, 5500, 3),
		 ("pato", 1000, 3000, 4),
         ("rato", 3000, 30000, 5),
		 ("minhoca", 3000, 100, 5),
		 ("macaco", 3000, 30000, 1),
		 ("leão", 10000, 30000, 4);

SELECT * FROM tb_personagem where poder_de_ataque > 2000;
SELECT * FROM tb_personagem where poder_de_defesa >= 2000 and poder_de_defesa <= 5000;
SELECT * FROM tb_personagem where nome like "c%";
SELECT classe, nome FROM tb_classe INNER JOIN tb_personagem on tb_classe.id_classe = tb_personagem.fk_classe;
SELECT classe, nome FROM tb_classe INNER JOIN tb_personagem on tb_classe.id_classe = tb_personagem.fk_classe where classe = "mago";



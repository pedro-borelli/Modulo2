create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes (
id_classe INT NOT NULL AUTO_INCREMENT,
classe varchar(20) NOT NULL,
arma varchar(20) NOT NULL,
regiao varchar(20) NOT NULL,
PRIMARY KEY (id_classe)
);

create table tb_personagens (
id_personagem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome varchar(30) NOT NULL,
sexo char NOT NULL,
ataque int NOT NULL,
defesa int NOT NULL,
vida int NOT NULL,
fk_classe INT,
FOREIGN KEY (fk_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (classe,arma,regiao)
VALUES 
("Espadachin","Espada","Teyvat"),
("Guerreiro","Lanca","Lyiue"),
("Arqueiro","Arco e Flecha","Inazuma");

INSERT INTO tb_personagens (nome,sexo,ataque,defesa,vida,fk_classe)
VALUES
("Traveller","M",1950,2300,10000,1),
("Carconte","M",3800,2150,15000,2),
("Ball","F",2300,1258,20000,3),
("Venti","M",2500,2600,58000,3),
("Ayaka","F",2700,4000,34000,1),
("Kokomi","F",1800,1200,20000,2),
("Corou","M",2900,3400,12000,3),
("Itto","M",4500,7800,12000,3);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "C%";
SELECT * FROM tb_classes JOIN tb_personagens;
SELECT * FROM tb_personagens WHERE fk_classe = 2;

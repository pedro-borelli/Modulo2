create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(10) NOT NULL,
tamanho VARCHAR(10) NOT NULL
);

create table tb_pizza (
id_pizza INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
preco DECIMAL NOT NULL,
fk_pizza INT,
FOREIGN KEY (fk_pizza) REFERENCES tb_categoria(id_categoria)
);

#COLOCANDO OS ATRIBUTOS DAS CATEGORIAS 
INSERT INTO tb_categoria(categoria,tamanho)
VALUES
("salgada","grande"),
("salgada","media"),
("doce","pequena"),
("salgada","grande"),
("doce","media");

INSERT INTO tb_pizza(nome,preco,fk_pizza)
VALUES
("Calabresa", 29.99, 1),
("Muçarela", 12.99,  2),
("Portuguesa", 26.80,  4),
("CarneSeca", 35.99,  2),
("Frango", 30.99,  1),
("ChocolateBranco", 37.40, 3),
("Atum", 45.99,  1),
("Chocolate", 28.99, 5);

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco > 29 AND preco < 60;
SELECT * FROM tb_pizza WHERE nome LIKE "C%";
SELECT nome,categoria FROM tb_pizza JOIN tb_categoria;
SELECT * FROM tb_pizza WHERE fk_pizza = 2;

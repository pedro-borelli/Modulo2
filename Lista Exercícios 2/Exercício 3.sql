create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tipo varchar(10),
marca varchar(20),
manipulado boolean
);

create table tb_produto (
id_produto INT NOT NULL AUTO_INCREMENT,
nome varchar(20),
validade datetime,
unidade int,
preco decimal,
fk_categoria INT NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo,marca,manipulado) VALUES
("gripe","policlin",true),
("pomada","hospiluc",false),
("higiene","farmahost",false),
("cosmetico","nebacetin",true),
("hidratante","permagabem",false);

INSERT INTO tb_produto (nome,validade,unidade,preco,fk_categoria) VALUES
("Dipirona",'2023-05-15',10,15.99,1),
("Ibuprofeno",'2022-06-13',12,29.99,1),
("Candicure",'2024-04-12',6,60.85,5),
("Bicatricure",'2022-03-11',20,80.99,4),
("Cinegripe",'2023-05-05',40,50.32,1),
("Amoxilina",'2030-07-11',12,103.45,2),
("Bocaclean",'2024-03-10',20,67.83,3),
("Cortazoid",'2026-07-23',12,48.99,2);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco > 3 AND preco < 50;
SELECT * FROM tb_produto WHERE nome LIKE "%%b%%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE tb_categoria.id_categoria = 1;

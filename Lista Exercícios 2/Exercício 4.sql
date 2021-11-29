create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria (
id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tipo varchar(20),
promocao boolean,
fresco boolean
);

create table tb_produto (
id_produto INT NOT NULL AUTO_INCREMENT,
nome varchar(20),
marca varchar(20),
quantidade int,
preco decimal,
fk_categoria INT NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo,promocao,fresco) VALUES
("FRUTA",true,true),
("LEGUME",false,true),
("VERDURA",true,true),
("GRÃO",false,false),
("FUNGO",false,true);

INSERT INTO tb_produto (nome,marca,quantidade,preco,fk_categoria) VALUES
("Castanha","grimoes",30,70.99,4),
("Alface","verdinha",20,34.20,3),
("Carambola","caramba",10,90.99,1),
("Cogumelo","fungusoide",20,110.18,5),
("Couve","matinho",24,13.20,3),
("Batata","batatinha123",15,23.45,2),
("Tomate","vermelhinho",40,51.40,2),
("Morando","moranguinho",60,70.77,1);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco > 3 AND preco < 50;
SELECT * FROM tb_produto WHERE nome LIKE '%C%';
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria WHERE tb_categoria.id_categoria=3;
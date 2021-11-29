create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria (
id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tipo varchar(20),
industrial boolean,
predial boolean
);

create table tb_produtos (
id_produto INT NOT NULL AUTO_INCREMENT,
nome varchar(20),
marca varchar(20),
quantidade int,
preco decimal,
fk_categoria INT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(tipo,industrial,predial) VALUES
("Construção",true,true),
("Manutenção",true,false),
("Tubulação",false,true),
("Acabamento",true,true),
("Jardinagem",false,true);

INSERT INTO tb_produtos(nome,marca,quantidade,preco,fk_categoria) VALUES
("Tinta","belatintas",2,80.99,4),
("Mangueira","fortubes",3,48.99,5),
("Cimento","cinzagrud",10,103.49,1),
("Tijolo","casinha",200,60.99,1),
("CanoPVC","tubinhos",30,20.89,3),
("Pinca","ISO40",1,200.95,2),
("Cavaco","metalman",50,116.79,2),
("Pedras","dolomita",150,45.30,4);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco > 3 AND preco < 60;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produtos.fk_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produtos.fk_categoria WHERE tb_categoria.id_categoria = 1;
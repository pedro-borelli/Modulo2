create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id int,
nome varchar(30),
cor varchar(12),
preco float,
peso float,
embalado boolean
);

select * from tb_produtos;
INSERT INTO tb_produtos (nome,cor,preco,peso,embalado)
VALUES
("Celular","preto",1500,2.0,true),
("WebCam","cinza",340,0.3,false),
("CadeirGamer","vermelho",850,10.5,false),
("PauSelfie","rosa",80,1.5,true),
("Cabo","azul",123,1.8,true);

SET SQL_SAFE_UPDATES =0;
select preco from tb_prdutos where preco < 500;

SET SQL_SAFE_UPDATES =0;
select preco from tb_produtos where preco > 500;

ALTER TABLE tb_produtos modify preco int;

create database db_escola;
use db_escola;

create table tb_estudantes(
id_estudantes int,
nome varchar(100),
sexo char,
idade int,
nota decimal
);

select * from tb_estudantes;
INSERT INTO tb_estudantes(nome,sexo,idade,nota)
VALUES
("Camilla","F",16,7.8),
("José","M",15,10),
("Pedro","M",17,3.5),
("Ana","F",17,6),
("Felipe","M",14,9.5),
("Leonardo","M",15,5),
("Simone","F",18,4.7),
("Edinalva","F",14,8);

SET SQL_SAFE_UPDATES =0;
SELECT  nome,nota FROM tb_estudantes WHERE nota > 7;

SET SQL_SAFE_UPDATES =0;
SELECT nome,nota FROM tb_estudantes WHERE nota < 7;

ALTER TABLE tb_estudantes modify nota int;




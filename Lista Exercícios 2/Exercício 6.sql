create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria (
id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
disciplina varchar(15),
remoto boolean
);

create table tb_curso (
id_curso INT NOT NULL AUTO_INCREMENT,
nome varchar(15),
periodo varchar(15),
horas_por_dia int,
preco decimal,
fk_categoria INT NOT NULL,
PRIMARY KEY (id_curso),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(disciplina,remoto) VALUES
("Administrativa",true),
("Saúde",false),
("Educacional",true),
("Industrial",false),
("Tecnologia",true);

INSERT INTO tb_curso(nome,periodo,horas_por_dia,preco,fk_categoria) VALUES
("Enfermagem","5 anos",6,1300.99,2),
("RH","2 anos",3,450.90,1),
("ManIndustrial", "4 anos",5,2050.99,4),
("TI","3 anos",4,3450.21,5),
("Medicina","7 anos",8,7600.99,2),
("Contabilidade","2 anos",3,670.89,1),
("Pedagogia","1 ano",2,870.99,3),
("Engenharia","5 anos",6,4000.99,4);

SELECT * FROM tb_curso WHERE preco > 50;
SELECT * FROM tb_curso WHERE preco > 3 AND preco < 60;
SELECT * FROM tb_curso WHERE nome LIKE '%M%';
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_curso.fk_categoria;
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_curso.fk_categoria WHERE tb_categoria.id_categoria = 2;

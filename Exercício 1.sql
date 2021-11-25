create database db_RH;
use db_RH;

create table tb_funcionarios(
id int,
nome varchar(100),
email varchar(100),
senha varchar(100),
cargo varchar(100),
salario float
);

select * from tb_funcionarios;
INSERT INTO tb_funcionarios (nome,email,senha,cargo,salario) 
VALUES 
("Sérgio", "serginho123@gmail.com","serginho123","faxineiro", 1200),
("Ana Clara","aninhac@hotmail.com","arrozcomfeijão","cozinheira", 2000),
("Bruno","brunao19@bol.com.br","contador1234","contador",3500),
("Fabrício","fabnewcont@gmail.com","huhuhfeddd","administrador",5200),
("Janaína","janabanana@outlook.com.br","lindaebela","supervisora",1600);

SET SQL_SAFE_UPDATES =0;
select salario from tb_funcionarios where salario < 2000;

SET SQL_SAFE_UPDATES =0;
select salario from tb_funcionarios where salario = 2000;

SET SQL_SAFE_UPDATES =0;
select salario from tb_funcionarios where salario > 2000;

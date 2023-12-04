CREATE DATABASE db_Shoes;

USE db_Shoes;

create table tb_produtos(
id bigint auto_increment,
nome varchar (250) NOT NULL,
tipo varchar (250),
marca varchar (250),
cor varchar(250),
tamanho int NOT NULL,
preco decimal (6,2) NOT NULL,
prazo_de_entrega date,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, tipo, marca, cor, tamanho, preco, prazo_de_entrega)
VALUES ("nike air max", "tenis", "nike", "azul e branco", 42, 600.00, "2023-12-08"),
("nike air forc feminino", "tenis", "nike", "azul e branco", 35, 550.00, "2023-12-08"),
(" chinelo adida", "chinelo", "adidas", "preto e branco", 42, 150.00, "2023-12-08"),
("sapatilha infantil", "sapatilha", "moleca", "rosa e branca", 32, 100.00, "2023-12-08");

INSERT INTO tb_produtos(nome, tipo, marca, cor, tamanho, preco, prazo_de_entrega)
VALUES ("pulma smash v2", "tenis", "puma", "azul e branco", 40, 250.00, "2023-12-10"),
("pulma smash v1 feminino", "tenis", "puma", "rosa e branco", 36, 300.00, "2023-12-15"),
(" Air Jordan 4", "tenis", "nike", "preto e branco", 45, 1500.00, "2023-12-08"),
(" Air Jordan 5", "tenis", "nike", "vermelho e preto", 44, 1870.00, "2023-12-22");



SELECT * FROM tb_produtos;

SELECT * from tb_produtos WHERE preco > 500.00;

SELECT * from tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET cor = "verde e branco" WHERE id = 5;
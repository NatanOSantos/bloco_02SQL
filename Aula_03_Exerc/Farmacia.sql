CREATE DATABASE db_farmacia_bem_estar1;

USE db_farmacia_bem_estar1;

CREATE TABLE tb_categorias1(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias1 (descricao)
VALUES ("generico");

INSERT INTO tb_categorias1 (descricao)
VALUES ("remedios");

INSERT INTO tb_categorias1 (descricao)
VALUES ("cosmeticos");

INSERT INTO tb_categorias1 (descricao)
VALUES ("perfumes");

INSERT INTO tb_categorias1 (descricao)
VALUES ("outros");

SELECT * FROM tb_categorias1;

CREATE TABLE tb_produtos1(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias1(id)
);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("dipirona 1g generico", 1000, "2024-03-11", 11.00, 1);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Novalgina 1g", 1300, "2025-07-08", 22.00, 2);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Coristina D", 2000, "2022-03-09", 10.00, 2);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Vick Pyrena", 300, "2026-02-10", 6.00, 2);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cicatricure", 150, "2027-01-08", 25.00, 3);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("212 VIP BLACK", 20, "2026-09-14", 400.00, 4);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("one million 50 ml", 25, "2027-11-11", 350.00, 4);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("cotonete", 55, "2029-04-27", 9.00, 5);

INSERT INTO tb_produtos1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("álcool em gel giovanna baby", 55, "2029-04-27", 20.00, 5);

SELECT * FROM tb_produtos1;

SELECT * from tb_produtos1 WHERE preco > 50.00;

SELECT * from tb_produtos1 WHERE preco between 5 and 60;

select * from tb_produtos1 where nome like "%c%";

SELECT nome, preco, quantidade, tb_categorias1.descricao 
FROM tb_produtos1 INNER JOIN tb_categorias1
ON tb_produtos1.categoria_id  = tb_categorias1.id;
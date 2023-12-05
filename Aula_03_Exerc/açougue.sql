CREATE DATABASE db_cidade_das_carnes1;

USE db_cidade_das_carnes1;

CREATE TABLE tb_categorias_carne1(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias_carne1 (descricao)
VALUES ("frango");

INSERT INTO tb_categorias_carne1 (descricao)
VALUES ("carne");

INSERT INTO tb_categorias_carne1 (descricao)
VALUES ("peixe");

INSERT INTO tb_categorias_carne1 (descricao)
VALUES ("porco");

INSERT INTO tb_categorias_carne1 (descricao)
VALUES ("outros");

SELECT * FROM tb_categorias_carne1;

CREATE TABLE tb_produtos_carne1(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias_carne1(id)
);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("picanha bovina", 200, "2024-03-11", 50.00, 2);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("coxa de frango kg", 50, "2024-01-08", 20.00, 1);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("contra file", 50, "2024-03-07", 45.00, 2);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("costela de porco kg", 25, "2024-03-10", 25.00, 4);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("salmão inteiro kg", 20, "2024-01-23", 50.00, 3);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("file mignon bovino", 50, "2024-09-14", 90.00, 2);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("linguiça toscana aurora", 30, "2024-05-11", 25.00, 5);

INSERT INTO tb_produtos_carne1 (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("pão de alho santa massa ", 55, "2024-04-27", 15.00, 5);

SELECT * FROM tb_produtos_carne1;

SELECT * from tb_produtos_carne1 WHERE preco > 50.00;

SELECT * from tb_produtos_carne1 WHERE preco between 50.00 and 150;

select * from tb_produtos_carne1 where nome like "%c%";

SELECT nome, preco, quantidade, tb_categorias_carne1.descricao 
FROM tb_produtos_carne1 INNER JOIN tb_categorias_carne1
ON tb_produtos_carne1.categoria_id  = tb_categorias_carne1.id;

SELECT nome, quantidade, dtvalidade,preco, tb_categorias_carne1.descricao
FROM tb_produtos_carne1
INNER JOIN tb_categorias_carne1 
ON tb_produtos_carne1.categoria_id = tb_categorias_carne1.id
WHERE tb_categorias_carne1.descricao = "carne";
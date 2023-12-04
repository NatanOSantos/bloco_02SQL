-- Criar o Banco de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtostb_produtos(
id bigint auto_increment,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 100, "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maça", 100, "2023-12-20", 8.00),
("laranja", 100, "2023-12-17", 6.00),
("banana", 100, "2023-12-15", 9.00),
("uva", 100, "2023-12-25", 20.00),
("melancia", 100, "2023-12-8", 25.00);




SELECT * FROM tb_produtos;

SELECT nome_produto, preco from tb_produtos;

SELECT * from tb_produtos WHERE id = 1;

SELECT * from tb_produtos WHERE data_validade = "2023-12-25";

SELECT * from tb_produtos WHERE preco > 10.00;

SELECT * from tb_produtos WHERE preco > 10.00 OR nome_produto = "banana";

SELECT * from tb_produtos WHERE NOT id = 1 ;

SELECT nome_produto, CONCAT ('R$ ', format (preco, 2, 'pt_BR')) AS preço FROM tb_produto;

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

DELETE FROM tb_produtos WHERE id = 3;

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos CHANGE nome nome_produto varchar (255);

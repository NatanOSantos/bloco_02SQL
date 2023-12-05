CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias_cursos(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias_cursos (descricao)
VALUES ("idiomas");

INSERT INTO tb_categorias_cursos (descricao)
VALUES ("livre");

INSERT INTO tb_categorias_cursos (descricao)
VALUES ("graduação");

INSERT INTO tb_categorias_cursos (descricao)
VALUES ("pos-graduação");

INSERT INTO tb_categorias_cursos (descricao)
VALUES ("outros");



SELECT * FROM tb_categorias_cursos;

CREATE TABLE tb_produtos_curso(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
duracao varchar(255),
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias_cursos(id)
);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES ("ingles", 200, "1 ano", 300.00, 1);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES ("engenharia civil", 50, "5 anos", 1500.00, 2);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES ("espanhol", 50, "1 ano", 250.00, 1);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES ("analise de sistemas", 25, "3 anos", 1500.00, 2);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES ("auxiliar de escritorio", 20, "6 meses", 350.00, 3);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES("Pos-psicopedagogia", 50, "1 ano", 2000.00, 4);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES("preparatorio vestibular", 30, "1 ano", 150.00, 5);

INSERT INTO tb_produtos_curso (nome, quantidade, duracao, preco, categoria_id)
VALUES("mandarim particular", 55, "2 anos", 400.00, 5);

SELECT * FROM tb_produtos_curso;

SELECT * from tb_produtos_curso WHERE preco > 500.00;

SELECT * from tb_produtos_curso WHERE preco between 600.00 and 3000.00;

select * from tb_produtos_curso where nome like "%e%";

SELECT nome, preco, quantidade, tb_categorias_cursos.descricao 
FROM tb_produtos_curso  INNER JOIN tb_categorias_cursos
ON tb_produtos_curso.categoria_id  = tb_categorias_cursos.id;

SELECT nome, preco, quantidade, tb_categorias_cursos.descricao 
FROM tb_produtos_curso  INNER JOIN tb_categorias_cursos
ON tb_produtos_curso.categoria_id  = tb_categorias_cursos.id
WHERE tb_categorias_cursos.descricao = "idiomas";
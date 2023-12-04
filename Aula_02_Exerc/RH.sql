CREATE DATABASE db_RH;

USE db_RH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar (250) NOT NULL,
cargo varchar(250),
salario decimal (6,2) NOT NULL,
vencimento_de_ferias date,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, cargo, salario, vencimento_de_ferias)
VALUES ("luiz", "Atendente", 1800.00, "2024-09-20"),
("Ana", "Gestora de Marketing", 5000.00, "2023-12-17"),
("Maria", "gerente", 9000.00, "2024-04-15"),
("Marcos", "TI", 6500.00, "2024-02-25"),
("Thamiris", "secretaria", 2500.00, "2024-08-16");

SELECT * FROM tb_funcionarios;

SELECT * from tb_funcionarios WHERE salario > 2000.00;

SELECT * from tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 6000.00 WHERE id = 4;
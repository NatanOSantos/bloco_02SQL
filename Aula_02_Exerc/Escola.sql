CREATE DATABASE db_Escola;

USE db_Escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar (250) NOT NULL,
serie varchar (250),
materia varchar (250),
nota int,
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUES ("paulo", "7ª serie", "português", 7),
("ana", "8ª serie", "matematica", 4),
("jose", "6ª serie", "historia", 5),
("claudia", "7ª serie", "geografia", 8),
("rafael", "8ª serie", "matematica", 4),
("aline", "5ª serie", "historia", 8),
("soraia", "7ª serie", "biologia", 10),
("thamiris", "6ª serie", "artes", 6);

SELECT * FROM tb_alunos;

SELECT * from tb_alunos WHERE nota > 7;

SELECT * from tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET serie = "8ª serie" WHERE id = 1;



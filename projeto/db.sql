CREATE DATABASE db_empresa_fabricio;

USE db_empresa_fabricio;

CREATE TABLE tb_funcionario(
	mat INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sal FLOAT(8, 2) NOT NULL,
	ano_nasc INT NOT NULL,
    sexo ENUM("F", "M") NOT NULL
);

INSERT INTO tb_funcionario VALUES (1010, "Carlos", 2897.5, 1995, "M");
INSERT INTO tb_funcionario VALUES (1011, "Maria", 1457.9, 1985, "F");
INSERT INTO tb_funcionario VALUES (1012, "Fernanda", 3900, 1999, "F");
INSERT INTO tb_funcionario VALUES (1013, "Pedro", 1297.9, 1995, "M");
INSERT INTO tb_funcionario VALUES (1014, "João", 4993.7, 1982, "M");

INSERT INTO tb_funcionario VALUES (1015, "Eduardo Carlos", 1347.2, 2005, "M");
INSERT INTO tb_funcionario VALUES (1016, "Maria Rita", 1457.9, 2005, "F");
INSERT INTO tb_funcionario VALUES (1017, "Júlia", 11512.9, 1980, "F");
INSERT INTO tb_funcionario VALUES (1018, "João Pedro", 1787, 2002, "M");
INSERT INTO tb_funcionario VALUES (1019, "João Marcos", 5863.7, 1999, "M");

SELECT * FROM tb_funcionario;


SELECT nome FROM tb_funcionario ORDER BY nome ASC;

SELECT nome FROM tb_funcionario WHERE sexo="F";

SELECT nome, sexo FROM tb_funcionario WHERE nome LIKE "J%";

SELECT nome, ano_nasc FROM tb_funcionario WHERE ano_nasc >= 1980 AND ano_nasc <= 1990;

SELECT ROUND(AVG(sal), 2) AS media_sal FROM tb_funcionario;

SELECT DISTINCT(ano_nasc) FROM tb_funcionario;

SELECT ROUND(sum(sal), 2) FROM tb_funcionario;

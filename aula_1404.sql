create database hospital_db;

USE hospital_db;

CREATE TABLE pacientes (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    idade INT NOT NULL,
    sexo CHAR, 
    nascimento DATE NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
) ENGINE = InnoDB;

DESCRIBE pacientes;

INSERT INTO pacientes (nome, idade, sexo, nascimento, email) 
VALUES ("Gabriel Diniz", 20, 'M', '2020-01-12', "joaogabriel3@mail.com");

-- CONSULTA
SELECT * FROM pacientes;
SELECT nome, idade, email FROM pacientes;

-- ATUALIZAÇÂO
UPDATE pacientes SET nascimento = '1976-12-27' WHERE id = 3;
UPDATE pacientes SET nascimento = '1976-12-27', email = "clara1@maail.com" WHERE id = 3;

-- EXCLUSÂO
DELETE FROM pacientes WHERE id = 3;

-- CONSULTAS COM FILTRO

SELECT * FROM pacientes WHERE sexo = 'M';
SELECT * FROM pacientes WHERE sexo = 'F';
SELECT * FROM pacientes WHERE idade > 25;
SELECT * FROM pacientes WHERE nascimento > 1984-1-1;
SELECT * FROM pacientes WHERE email <> "gabriel@mail.com";
SELECT * FROM pacientes WHERE MONTH(nascimento) = 11;
SELECT * FROM pacientes WHERE YEAR(nascimento) = 1984;

SELECT * FROM pacientes WHERE idade >=38 AND idade < 60;
SELECT * FROM pacientes WHERE email = "raphaelgfaria@mail.com" OR email = "renatinha@mail.com";
SELECT * FROM pacientes WHERE NOT nome = "Raphael";
SELECT * FROM pacientes WHERE idade <=36 AND sexo = 'F';

 SELECT * FROM pacientes WHERE idade IN(36,21);
 SELECT * FROM pacientes WHERE NOT(idade IN(36,21));
 SELECT * FROM pacientes WHERE nascimento BETWEEN '1960-03-16' AND '1987-05-16';
 SELECT * FROM pacientes WHERE idade BETWEEN '21' AND '38';
 SELECT * FROM pacientes WHERE nome LIKE "Gabriel%";
 SELECT * FROM pacientes WHERE nome LIKE "%Gabriel%";
 SELECT * FROM pacientes WHERE nome LIKE "%Gabriel";
 SELECT * FROM pacientes WHERE nome LIKE "Gabriel";
 
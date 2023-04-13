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
VALUES ("Maria José", 63, 'F', '1960-03-16', "maria@mail.com");

-- CONSULTA
SELECT * FROM pacientes;
SELECT nome, idade, email FROM pacientes;

-- ATUALIZAÇÂO
UPDATE pacientes SET nascimento = '1976-12-27' WHERE id = 3;
UPDATE pacientes SET nascimento = '1976-12-27', email = "clara1@maail.com" WHERE id = 3;

-- EXCLUSÂO
DELETE FROM pacientes WHERE id = 3;
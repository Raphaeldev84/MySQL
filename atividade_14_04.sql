CREATE TABLE pessoas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  sexo CHAR(1) NOT NULL,
  data_nascimento DATE NOT NULL
)ENGINE = InnoDB;

INSERT INTO pessoas (nome, idade, sexo, data_nascimento) VALUES
('Ana Oliveira', 25, 'F', '1997-05-10'),
('Beatriz Santos', 30, 'F', '1992-02-15'),
('Carlos Silva', 42, 'M', '1979-09-22'),
('Daniel Souza', 18, 'M', '2004-12-31'),
('Eduardo Costa', 50, 'M', '1973-06-05'),
('Fernanda Rocha', 29, 'F', '1993-11-20'),
('Gabriela Silva', 36, 'F', '1986-03-27'),
('Henrique Alves', 28, 'M', '1994-07-18'),
('Isabela Ferreira', 22, 'F', '2000-01-03'),
('João Lima', 45, 'M', '1978-12-05'),
('Kátia Silva', 33, 'F', '1989-08-15'),
('Leonardo Castro', 27, 'M', '1995-04-25'),
('Márcia Oliveira', 41, 'F', '1980-06-22'),
('Nathalia Ramos', 19, 'F', '2003-10-09'),
('Oliver Ribeiro', 37, 'M', '1986-09-16'),
('Paula Carvalho', 31, 'F', '1991-11-07'),
('Rafael Martins', 23, 'M', '1999-02-28'),
('Sofia Gomes', 26, 'F', '1996-08-12'),
('Tiago Ferreira', 39, 'M', '2000-04-23'),
('Viviane Souza', 35, 'F', '1987-12-10');

SELECT * FROM pessoas;

-- Selecione todos os registros da tabela "pessoas" que tenham mais de 30 anos.

SELECT * FROM pessoas WHERE idade > 30;

-- Selecione todos os registros da tabela "pessoas" que tenham menos de 25 anos ou sejam do sexo feminino.

SELECT * FROM pessoas WHERE idade < 25 or sexo = 'F';

-- Selecione todos os registros da tabela "pessoas" que tenham idade entre 20 e 40 anos.

SELECT * FROM pessoas WHERE idade BETWEEN '20' AND '40';
 
-- Selecione todos os registros da tabela "pessoas" que tenham nome começando com "Jo".
 
SELECT * FROM pessoas WHERE nome LIKE "Jo%";
 
-- Selecione todos os registros da tabela "pessoas" que nasceram no ano 2000.
 
SELECT * FROM pessoas WHERE YEAR(data_nascimento) = 2000;
 
-- Selecione todos os registros da tabela "pessoas" que tenham nome contendo a palavra "Silva".
 
SELECT * FROM pessoas WHERE nome LIKE "%Silva%";
 
-- Selecione todos os registros da tabela "pessoas" que nasceram antes de 01/01/1990.
 
SELECT * FROM pessoas WHERE data_nascimento < '1990-1-1';
 
-- Selecione todos os registros da tabela "pessoas" que tenham nome terminando com a letra "a".
 
SELECT * FROM pessoas WHERE nome LIKE "%a";
  
-- Selecione todos os registros da tabela "pessoas" cujas idades não estejam entre 25 e 35 anos.
  
SELECT * FROM pessoas WHERE NOT(idade BETWEEN 25 AND 35);
   
-- Selecione todos os registros da tabela "pessoas" cujos nomes contenham "João" ou "Maria".
   
SELECT * FROM pessoas WHERE nome LIKE "%João%" OR "%Maria%";
   
-- Selecione todos os registros da tabela "pessoas" cuja data de nascimento seja entre 01/01/1980 e 31/12/1990.
   
SELECT * FROM pessoas WHERE data_nascimento BETWEEN '1980-01-01' AND '1990-12-31';
   
-- Selecione todos os registros da tabela "pessoas" cujos nomes comecem com "L" e tenham idade maior que 25 anos.
   
SELECT * FROM pessoas WHERE nome LIKE "L%" AND idade > 25;
    
-- Selecione todos os registros da tabela "pessoas" cujas idade sejam 20, 21, 22, 23, 24, ou 25 anos.
  
SELECT * FROM pessoas WHERE idade IN(20, 21, 22, 23, 24, 25);

-- Selecione todos os registros da tabela "pessoas" que tenham nome contendo a letra "a" e idade entre 25 e 35 anos.
 
SELECT * FROM pessoas WHERE nome LIKE "%a%" AND idade BETWEEN 25 AND 35;

-- Selecione todos os registros da tabela "pessoas" cujos nomes comecem com "G" ou "R" e sejam do sexo masculino.

SELECT * FROM pessoas WHERE (nome LIKE "G%" OR nome LIKE "R%") AND sexo = 'M';


-- Ordenar e Limitar

SELECT * FROM pessoas ORDER BY nome ASC;
SELECT * FROM pessoas ORDER BY nome DESC;
SELECT * FROM pessoas ORDER BY idade ASC;
SELECT * FROM pessoas ORDER BY data_nascimento DESC;
SELECT * FROM pessoas LIMIT 10;
SELECT * FROM pessoas ORDER BY id DESC LIMIT 10;

-- COUNT

SELECT COUNT(*) FROM pessoas WHERE sexo = 'M';
SELECT COUNT(*) AS total_meninas FROM pessoas WHERE sexo = 'F';
SELECT sexo, COUNT(*) AS total_meninas FROM pessoas WHERE sexo = 'F';
SELECT COUNT(*) AS qnt_silva FROM pessoas WHERE nome LIKE "%%silva";

-- GROUP BY

SELECT sexo, COUNT(*) FROM pessoas GROUP BY sexo;
SELECT sexo, COUNT(*) AS total FROM pessoas GROUP BY sexo;
SELECT YEAR(data_nascimento)AS ano, COUNT(*) AS total FROM pessoas GROUP BY YEAR (data_nascimento);
SELECT YEAR(data_nascimento)AS ano, COUNT(*) AS total FROM pessoas GROUP BY YEAR (data_nascimento) ORDER BY ano;
SELECT MONTH(data_nascimento)AS mes, COUNT(*) AS total FROM pessoas GROUP BY MONTH (data_nascimento) ORDER BY mes;

-- Função AVG

SELECT AVG(idade) AS media_idades FROM pessoas;
SELECT sexo, AVG(idade) AS media_idades FROM pessoas GROUP BY sexo;

-- SUM

SELECT SUM(idade) AS soma_idades FROM pessoas;



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

-- Exercício 2 Tomando como base a tabela de pessoas criada na atividade anterior crie consultas que satisfação as necessidades abaixo.

-- Selecione todos os registros da tabela "pessoas" em ordem alfabética pelo nome.  

SELECT * FROM pessoas ORDER BY nome;

-- Selecione os registros da tabela "pessoas" em ordem decrescente de idade.

SELECT * FROM pessoas ORDER BY idade DESC;

-- Selecione os registros da tabela "pessoas" em ordem crescente de data de nascimento.

SELECT * FROM pessoas ORDER BY data_nascimento;

-- Selecione os 5 primeiros registros da tabela "pessoas" em ordem alfabética pelo nome.;

SELECT * FROM pessoas ORDER BY nome LIMIT 5;

-- Selecione a contagem de pessoas do sexo masculino.

SELECT COUNT(*) as total_sexo_masculino FROM pessoas WHERE sexo = 'M';

-- Selecione a média de idade das pessoas da tabela "pessoas".

SELECT ROUND(AVG(idade),2) AS media_de_idades FROM pessoas;

-- Selecione a soma das idades das pessoas da tabela "pessoas".

SELECT SUM(idade) AS soma_idades FROM pessoas;

-- Selecione a soma das idades das pessoas do sexo feminino.

SELECT SUM(idade) AS soma_idade_mulheres FROM pessoas WHERE sexo = 'F';

-- Selecione a média de idade das pessoas do sexo masculino.

SELECT ROUND(AVG(idade),2) AS soma_idades_homens FROM pessoas WHERE sexo = 'M';

-- Selecione a soma das idades das pessoas agrupadas por sexo.

SELECT sexo, SUM(idade) AS soma_idades FROM pessoas GROUP BY sexo;

-- Selecione a média de idade das pessoas agrupadas por sexo.

SELECT ROUND(AVG(idade),2) AS soma_idades FROM pessoas GROUP BY sexo;

-- Selecione a contagem de pessoas agrupadas por mês de nascimento.

SELECT MONTH(data_nascimento) as mes_nascimento, COUNT(*) as total_pessoas FROM pessoas GROUP BY mes_nascimento;
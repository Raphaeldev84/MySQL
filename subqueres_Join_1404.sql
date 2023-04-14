CREATE DATABASE mercado;

USE mercado;

CREATE TABLE produtos(
	codigo BIGINT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    preco FLOAT,
    categoria VARCHAR(255)
) ENGINE = InnoDB;

INSERT INTO produtos(descricao, preco, categoria)
VALUES
("Camiseta preta", 29.90, "Roupas"),
("Tênis branco", 149.99, "Calçados"),
("Cinto de couro marrom", 79.99, "Acessórios"),
("Shorts jeans", 49.90, "Roupas"),
("Bermuda de moletom", 59.99, "Roupas"),
("Sapato social preto", 199.99, "Calçados"),
("Boné de aba reta", 39.90, "Acessórios"),
("Camisa social branca", 89.90, "Roupas"),
("Jaqueta de couro", 399.99, "Roupas"),
("Calça jeans skinny", 79.90, "Roupas"),
("Tênis esportivo", 229.99, "Calçados"),
("Carteira de couro", 69.99, "Acessórios"),
("Blusa de lã", 119.90, "Roupas"),
("Moletom com capuz", 99.99, "Roupas"),
("Sapatênis marrom", 149.99, "Calçados"),
("Óculos de sol", 59.90, "Acessórios"),
("Vestido longo", 179.90, "Roupas"),
("Saia rodada", 69.90, "Roupas"),
("Sandália de salto alto", 129.99, "Calçados"),
("Bolsa de mão", 89.99, "Acessórios");

SELECT * FROM produtos;

CREATE TABLE pedidos (
numero BIGINT PRIMARY KEY AUTO_INCREMENT,
quantidade INT,
situacao VARCHAR(100),
codigo_produto BIGINT,
FOREIGN KEY(codigo_produto) REFERENCES produtos(codigo)
) ENGINE = InnoDB;

INSERT INTO pedidos (quantidade, situacao, codigo_produto)
VALUES (10, "separação", 13);

INSERT INTO pedidos (quantidade, situacao, codigo_produto)
VALUES (2, "enviado", 20);

INSERT INTO pedidos (quantidade, situacao, codigo_produto)
VALUES (1, "Enviado", 4);

SELECT * FROM pedidos;

SELECT AVG(preco) FROM produtos;

-- SUBQUERES

SELECT * FROM produtos WHERE preco > (SELECT AVG(preco) FROM produtos);
SELECT * FROM produtos as p WHERE codigo IN (SELECT codigo_produto FROM pedidos);
SELECT * FROM produtos as p WHERE codigo IN (SELECT codigo_produto FROM pedidos WHERE situacao = "entregue" );

-- OPERADOR JOIN: combina dados de duas ou mais tabelas

SELECT pr.descricao, COUNT(pe.numero) FROM produtos AS pr JOIN pedidos AS pe
ON pr.codigo = pe.codigo_produto GROUP BY pr.descricao;



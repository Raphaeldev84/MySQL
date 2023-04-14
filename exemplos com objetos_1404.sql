USE hospital_db

CREATE TABLE produtos (
  codigo INT PRIMARY KEY,
  descricao VARCHAR(255),
  valor DECIMAL(10,2),
  categoria VARCHAR(50)
) ENGINE = InnoDB;

INSERT INTO produtos (codigo, descricao, valor, categoria) VALUES
(1, 'Camiseta branca', 29.90, 'Roupas'),
(2, 'Calça jeans', 89.90, 'Roupas'),
(3, 'Tênis preto', 99.90, 'Calçados'),
(4, 'Chinelo de dedo', 19.90, 'Calçados'),
(5, 'Boné preto', 19.90, 'Acessórios'),
(6, 'Mochila grande', 129.90, 'Acessórios'),
(7, 'Relógio digital', 59.90, 'Acessórios'),
(8, 'Óculos de sol', 79.90, 'Acessórios'),
(9, 'Smartphone', 1499.00, 'Eletrônicos'),
(10, 'Notebook', 3999.00, 'Eletrônicos'),
(11, 'Tablet', 1099.00, 'Eletrônicos'),
(12, 'Caixa de som', 249.90, 'Eletrônicos'),
(13, 'Bola de futebol', 59.90, 'Esportes'),
(14, 'Raquete de tênis', 149.90, 'Esportes'),
(15, 'Luvas de boxe', 129.90, 'Esportes'),
(16, 'Corda de pular', 19.90, 'Esportes'),
(17, 'Livro de ficção', 29.90, 'Livros'),
(18, 'Livro de não-ficção', 39.90, 'Livros'),
(19, 'Revista de moda', 9.90, 'Revistas'),
(20, 'Revista de tecnologia', 12.90, 'Revistas');

SELECT * FROM produtos;

SELECT AVG(valor) AS media_valor_esportes FROM produtos WHERE categoria = "Esportes";
SELECT SUM(valor) AS media_valor_acessorios FROM produtos WHERE categoria = "Acessórios";
SELECT categoria, ROUND(AVG(valor), 2) AS media_valor FROM produtos GROUP BY categoria;
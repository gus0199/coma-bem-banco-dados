CREATE TABLE Produto (
  id_produto INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  unidade_medida VARCHAR(20)
);

CREATE TABLE Estoque (
  id_estoque INT PRIMARY KEY AUTO_INCREMENT,
  id_produto INT NOT NULL,
  quantidade DECIMAL(10,2),
  FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

INSERT INTO Produto (nome, preco, unidade_medida) VALUES
('Carne', 30.00, 'kg'),
('Óleo', 30.00, 'unidade'),
('Leite', 30.00, 'litros'),
('Alface', 30.00, 'unidade');

Adicionando script SQL das tabelas Produto e Estoque

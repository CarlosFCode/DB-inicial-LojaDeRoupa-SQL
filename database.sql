-- CRIAR DATABASE
CREATE DATABASE LojaDeRoupas;
USE LojaDeRoupas;

-- CRIAR DATABASE
CREATE TABLE clientes(
	ID_Cliente INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    Gmail VARCHAR(100) NOT NULL
);

CREATE TABLE produtos(
	ID_Produto INT,
    Nome_Produto VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE pedidos(
	ID_Pedido INT,
    ID_Cliente INT,
    ID_Produto INT,
    Qtd_Vendida INT,
    Total DECIMAL(10, 2)
);

-- ADICIONANDO INFORMAÇÃO (clientes, produtos e pedidos)
INSERT INTO clientes(ID_Cliente, Nome, Telefone, Gmail)
VALUES
	(1, 'Carlos', '+5581985627895', 'carloslucas@gmail.com'),
    (2, 'Elizangela', '+5581999526474', 'elizangelabela@gmail.com'),
    (3, 'Isabelle', '+5581909375227', 'isa.belle03@gmail.com');
    
INSERT INTO produtos(ID_Produto, Nome_Produto, Categoria, Preco)
VALUES
    (1, 'Camiseta Estampada', 'Roupa', 79.90),
    (2, 'Moletom Preto', 'Roupa', 129.90),
    (3, 'Calça Jeans', 'Roupa', 159.90),
    (4, 'Sapato Social', 'Calçado', 199.90),
    (5, 'Tênis Casual', 'Calçado', 89.90),
    (6, 'Bermuda Jeans', 'Roupa', 69.90);

INSERT INTO pedidos(ID_Pedido, ID_Cliente, ID_Produto, Qtd_Vendida, Total)
VALUES
    (1, 1, 1, 2, 159.80),
    (2, 2, 3, 1, 159.90),
    (3, 1, 2, 3, 389.70),
    (4, 1, 4, 1, 199.90),
    (5, 2, 5, 2, 179.80),
    (6, 3, 1, 1, 79.90),
    (7, 2, 2, 4, 519.60),
    (8, 1, 6, 1, 69.90),
    (9, 2, 4, 2, 399.80),
    (10, 1, 3, 1, 159.90);
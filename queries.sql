-- QUAL CLIENTE GASTOU MAIS?
SELECT 
    pd.ID_Cliente,
    clt.Nome AS Nome_Cliente,
    COUNT(DISTINCT pd.ID_Pedido) AS Numero_de_Pedidos,
    SUM(pd.Total) AS Total_Vendas
FROM pedidos pd
INNER JOIN clientes clt
    ON pd.ID_Cliente = clt.ID_Cliente
GROUP BY pd.ID_Cliente, clt.Nome
ORDER BY Total_Vendas DESC;

	
-- TOTAL E NÚMERO DE VENDAS POR PRODUTO
SELECT
	produtos.Nome_Produto,
    SUM(pedidos.Qtd_Vendida) as Qtd_Vendida,
    SUM(pedidos.Total) as Total_Vendas
FROM pedidos
INNER JOIN produtos
	ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY produtos.Nome_Produto
ORDER BY Total_Vendas DESC;
-- Criar a tabela 'compras' para fins de exemplo
CREATE TABLE compras (
  compra_id INT PRIMARY KEY,
  produto_id INT,
  quantidade INT,
  data_compra DATE
);

-- Inserir dados de exemplo
INSERT INTO compras (compra_id, produto_id, quantidade, data_compra)
VALUES
  (1, 1, 50, '2024-03-01'),
  (2, 2, 30, '2024-03-01'),
  (3, 1, 20, '2024-03-02'),
  (4, 2, 40, '2024-03-02');

-- Criar a stored procedure para calcular a quantidade de produtos comprados por dia
DELIMITER //

CREATE PROCEDURE relatorio_diario()
BEGIN
  SELECT data_compra, SUM(quantidade) AS total_comprado
  FROM compras
  GROUP BY data_compra;
END //

DELIMITER ;

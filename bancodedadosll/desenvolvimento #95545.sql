
CREATE TABLE clientes (
  cliente_id INT PRIMARY KEY,
  nome VARCHAR(255),
  data_cadastro DATE
);

INSERT INTO clientes (cliente_id, nome, data_cadastro)
VALUES
  (1, 'Cliente 1', '2024-03-01'),
  (2, 'Cliente 2', '2024-03-01'),
  (3, 'Cliente 3', '2024-03-02'),
  (4, 'Cliente 4', '2024-03-02');


DELIMITER //

CREATE FUNCTION total_clientes_cadastrados(data_pesquisa DATE)
RETURNS INT
BEGIN
  DECLARE total INT;
  
  SELECT COUNT(*) INTO total
  FROM clientes
  WHERE DATE(data_cadastro) = DATE(data_pesquisa);
  
  RETURN total;
END //

DELIMITER ;

desenvolvimento #955-- Criar o banco de dados
CREATE DATABASE ecommerce;

-- Usar o banco de dados
USE ecommerce;

-- Criar a tabela 'users'
CREATE TABLE users (
  user_id INT PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255)
);

-- Inserir dados na tabela 'users'
INSERT INTO users (user_id, username, email)
VALUES
  (1, 'joao', 'joao@email.com'),
  (2, 'maria', 'maria@email.com'),
  (3, 'carlos', 'carlos@email.com');

-- Criar a tabela 'orders'
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  user_id INT,
  product VARCHAR(255),
  quantity INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Inserir dados na tabela 'orders'
INSERT INTO orders (order_id, user_id, product, quantity)
VALUES
  (101, 1, 'Laptop', 2),
  (102, 2, 'Smartphone', 1),
  (103, 3, 'Headphones', 3);

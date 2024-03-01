-- Criar o banco de dados
CREATE DATABASE escola;

-- Usar o banco de dados
USE escola;

-- Criar a tabela 'alunos'
CREATE TABLE alunos (
  aluno_id INT PRIMARY KEY,
  nome VARCHAR(255),
  idade INT
);

-- Criar a tabela 'notas'
CREATE TABLE notas (
  nota_id INT PRIMARY KEY,
  aluno_id INT,
  disciplina VARCHAR(255),
  nota DECIMAL(5, 2),
  FOREIGN KEY (aluno_id) REFERENCES alunos(aluno_id)
);

-- Criar a tabela 'eventos'
CREATE TABLE eventos (
  evento_id INT PRIMARY KEY,
  mensagem VARCHAR(255),
  data_registro TIMESTAMP
);

-- Criar o trigger para verificar notas abaixo de 5.0
CREATE TRIGGER after_insert_nota
AFTER INSERT ON notas
FOR EACH ROW
BEGIN
  IF NEW.nota < 5.0 THEN
    INSERT INTO eventos (mensagem, data_registro)
    VALUES ('Nota abaixo de 5.0 detectada para aluno ' || NEW.aluno_id || ' na disciplina ' || NEW.disciplina, NOW());
  END IF;
END;

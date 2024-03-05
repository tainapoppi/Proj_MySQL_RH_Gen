CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionario(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Departamento VARCHAR(100),
    Data_Admissao DATE,
    Salario DECIMAL(10, 3)
);


INSERT INTO tb_funcionario (ID, Nome, Cargo, Departamento, Data_Admissao, Salario)
VALUES ('João Silva', 'Analista de TI', 'Tecnologia', '2020-02-15', '5000.00'),
('Maria Santos', 'Gerente de Vendas', 'Vendas', '2018-05-20', '8000.00'),
('Pedro Oliveira', 'Analista Financeiro', 'Finanças', '2019-09-10', '6000.00'),
('Ana Souza', 'Desenvolvedor', 'Tecnologia', '2021-03-08', '5500.00'),
('Carlos Pereira', 'Analista de RH', 'Recursos Humanos', '2017-11-25', '7000.00');

SELECT * FROM tb_funcionario;

ALTER TABLE tb_funcionario ADD descricao VARCHAR(255);

UPDATE tb_funcionario SET descricao = "Analista" WHERE Id = 01;
UPDATE tb_funcionario SET descricao = "Gerente" WHERE Id = 02;
UPDATE tb_funcionario SET descricao = "Analista" WHERE Id = 03;
UPDATE tb_funcionario SET descricao = "Dev" WHERE Id = 04;
UPDATE tb_funcionario SET descricao = "Analista" WHERE Id = 05;


SET SQL_SAFE_UPDATES = 1;

SELECT * FROM tb_funcionario WHERE Salario > 2000;

-- Consulta para retornar todos os colaboradores com salário menor que 2000
SELECT * FROM tb_funcionario WHERE Salario < 2000;

-- Atualização de um registro
UPDATE tb_funcionario SET Salario = 3000.00 WHERE ID = 1;

-- Verificação da atualização
SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario ORDER BY nome ASC;











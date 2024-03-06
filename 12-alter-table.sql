CREATE TABLE prod(
  id SERIAL PRIMARY KEY,
  descricao VARCHAR(50)
);

-- Alterar o neme da tabela
ALTER TABLE prod RENAME TO produto;

-- Adicionar uma coluna nova
ALTER TABLE produto ADD COLUMN qtd int;
SELECT * FROM produto;

-- Alterar o tipo de dado de uma coluna
ALTER TABLE produto ALTER COLUMN qtd TYPE real;

-- Renomear uma coluna
ALTER TABLE produto RENAME COLUMN qtd TO quantidade;
SELECT * FROM produto;

-- Definir um valor padrão para uma coluna
ALTER TABLE produto ALTER COLUMN quantidade SET DEFAULT 1;
INSERT INTO
produto(descricao)
VALUES('Bicicleta');
INSERT INTO
produto(descricao, quantidade)
VALUES('Televisão 32 polegadas', 10);

SELECT * FROM produto;

-- Excluir uma coluna (MUITO CUIDADO!!)
ALTER TABLE produto DROP COLUMN quantidade;
SELECT * FROM produto;

-- Adicionando uma restrição
ALTER TABLE produto ADD COLUMN quantidade int;
ALTER TABLE produto ADD CONSTRAINT quantidade CHECK (quantidade >= 10);

INSERT INTO produto(descricao, quantidade)
VALUES('Geladeira', 20);

-- Excluir a tabela
DROP TABLE produto;
SELECT * FROM produto;
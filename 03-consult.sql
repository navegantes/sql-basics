-- Consulta

-- Selecionar as pessoas sem renda
SELECT * FROM pessoa where renda = 0;
-- Selecionar as pessoas com renda
SELECT * FROM pessoa where renda > 0;
-- Selecionar as pessoas com menos de 20 anos
SELECT * FROM pessoa where idade < 20;
-- Selecionar as pessoas com mais de 30 anos
SELECT * FROM pessoa where idade > 30;
-- Selecionar as pessoas com nome inicia com 'm'
SELECT * FROM pessoa where nome like 'M%';
-- Selecionar as pessoas em ordem alfabetica
SELECT * FROM pessoa ORDER BY nome asc;

SELECT id,nome FROM familia;
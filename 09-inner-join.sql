/*
O INNER JOIN retorna apenas as linhas em que há uma
correspondência entre as tabelas envolvidas.
*/

-- Código associado -> matricula.id
-- Nome associado   -> pessoa.nome
-- Data associacao  -> matricula.dt_associacao

SELECT matricula.id, pessoa.nome, matricula.dt_associacao
FROM matricula
INNER JOIN pessoa
ON matricula.pessoa_id = pessoa.id;

SELECT * FROM matricula;
SELECT * FROM pessoa;

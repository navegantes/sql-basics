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

-- Parte 2
-- Alias nas colunas
SELECT
matricula.id as "Código Associado",
pessoa.nome as "Nome Associado",
matricula.dt_associacao as "Data Associacao"
FROM matricula
INNER JOIN pessoa
ON matricula.pessoa_id = pessoa.id;

-- Parte 3
-- Código associado -> matricula.id
-- Nome associado   -> pessoa.nome
-- Data reservação  -> reserva.dt_reserva
-- Data devolução   -> reserva.dt_reserva

-- SELECT * FROM equipamento LIMIT 100;

-- Alias tabela
SELECT
mat.id as "Código Associado",
pess.nome as "Nome Associado",
equip.descricao as "Equipamento",
res_equip.dt_reserva as "Data Reserva",
res_equip.dt_devolucao as "Data Devolução"
FROM reserva_equipamento as res_equip
INNER JOIN matricula as mat
ON mat.id = res_equip.matricula_id
INNER JOIN pessoa as pess
ON pess.id = mat.pessoa_id
INNER JOIN equipamento as equip
ON equip.id = res_equip.equipamento_id;

-- Outra forma de inner join
SELECT
mat.id as "Código Associado",
pess.nome as "Nome Associado",
equip.descricao as "Equipamento",
res_equip.dt_reserva as "Data Reserva",
res_equip.dt_devolucao as "Data Devolução"
FROM
reserva_equipamento as res_equip,
pessoa as pess,
matricula as mat,
equipamento as equip
WHERE
mat.id = res_equip.matricula_id
AND pess.id = mat.pessoa_id
AND equip.id = res_equip.equipamento_id;



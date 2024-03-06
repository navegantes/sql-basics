/*
Funções
Max : Maximo
Min : Minimo
Sum : Soma
Avg : Media
Count : Contar
Group by : Agrupar
*/

SELECT max(renda) FROM pessoa;
SELECT min(renda) FROM pessoa;
SELECT sum(renda) FROM pessoa;
SELECT avg(renda) FROM pessoa;
SELECT max(renda) FROM pessoa;
SELECT min(renda) FROM pessoa;
SELECT sum(renda) FROM pessoa;
SELECT count(id) FROM pessoa;

-- Group by
SELECT
fam.nome as familia,
count(pess.id) as pessoas
FROM
pessoa pess,
familia fam
WHERE pess.familia_id = fam.id
GROUP BY fam.nome;

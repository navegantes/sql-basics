/*
O RIGHT JOIN retorna todas as linhas da tabela à direita
e as linhas da tabela correspondentes da tabela à esquerda.
Se não não houver correspondência na tabela à esquerda,
serão retornados valores nulos.
*/

SELECT
  mat.id as "Código Associacao",
  pess.nome as "Associado",
  equip.id as "Codigo Equipamento",
  equip.descricao as "Equipamento",
  res_equip.dt_reserva as "Data Reserva",
  res_equip.dt_devolucao as "Data Devolução"
FROM equipamento as equip
INNER JOIN reserva_equipamento as res_equip
  ON res_equip.equipamento_id = equip.id
RIGHT JOIN matricula as mat
  ON mat.id = res_equip.matricula_id
INNER JOIN pessoa as pess
  ON pess.id = mat.pessoa_id;


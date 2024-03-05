/*
O LEFT JOIN retorna todas as linhas da tabela
à esquerda e as linhas correspondentes da tabela à direita.
Se não não houver correspondencia na tabela à direita,
serão retornados valores nulos.
*/

SELECT
  equip.id as "Codigo Equipamento",
  equip.descricao as "Equipamento",
  mat.id as "Código Associacao",
  pess.nome as "Associado",
  res_equip.dt_reserva as "Reserva",
  res_equip.dt_devolucao as "Devolução"
FROM equipamento as equip
LEFT JOIN reserva_equipamento as res_equip
  ON res_equip.equipamento_id = equip.id
LEFT JOIN matricula as mat
  ON mat.id = res_equip.matricula_id
LEFT JOIN pessoa as pess
  ON pess.id = mat.pessoa_id;
-- ORDER BY equip.id ASC;
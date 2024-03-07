-- Sub select
-- in / not in
-- Listar os equipamentos estão disponiveis (NOT IN)
-- Listar os equipamentos etão reservados (IN)
SELECT *
FROM equipamento
WHERE id NOT IN (
  SELECT id 
  FROM reserva_equipamento
  WHERE dt_devolucao IS NULL
);

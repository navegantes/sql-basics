/*
Uma VIEW é uma representação virtual de uma tabela ou consulta
que permite aos usuários recuperar e manipular os dados de maneira
semelhante a uma tabela real, mas sem armazenar fisicamente os dados.
*/

CREATE VIEW pessoa_associada AS 
  
WITH pessoa_classificada AS (
  SELECT
    id,
    nome,
    idade,
    CASE 
      WHEN idade < 12 THEN  'Criança'
      WHEN idade >= 12 AND idade < 18 THEN 'Adolescente'
      ELSE  'Adulto'
    END classificacao_idade,
    renda,
    CASE 
      WHEN renda <= 1000 THEN  'C'
      WHEN renda > 1000 AND renda <= 5000 THEN 'B'
      ELSE  'A'
    END faixa_renda
  FROM pessoa
)
SELECT
  pess.nome,
  pess.idade,
  pess.classificacao_idade,
  pess.renda,
  pess.faixa_renda,
  mat.id AS "Código associado"
FROM matricula as mat
RIGHT JOIN pessoa_classificada as pess
ON pess.id = mat.pessoa_id;

--

SELECT * FROM pessoa_associada;


/*
Case
  - Classificar as pessoas por idade
    < 12 anos -> criança
    >= 12 anos E < 18 anos -> adolescente
    > 18 anos -> Adulto
  - Classificar a pessoa por renda
    <= 1000 -> Client C
    > 1000 E <= 5000 -> Client B
    > 5000 -> Client A
*/

SELECT
nome,
idade,
CASE 
  WHEN idade < 12 THEN  'Criança'
  WHEN idade >= 12 AND idade < 18 THEN 'Adolescente'
  ELSE  'Adulto'
END classificacao_idade
FROM pessoa

--

SELECT
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

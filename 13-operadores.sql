/*
>   : Maior
<   : Menor
>=  : Maior ou igual
<=  : Menor ou igual
<>  : Diferente
AND : "E" lógico
OR  : "Ou" lógico
*   : Multiplicação
/   : Divisão
+   : Adição
-   : Subtração
*/

SELECT *
FROM pessoa
WHERE renda > 6000
AND idade > 30;

SELECT *
FROM pessoa
WHERE renda > 6000
OR idade > 10;

-- Coluna contribuição tras 10% em cima da renda
-- 'contribuicao' coluna calculada
SELECT *,
(renda * 0.1) as contribuicao
FROM pessoa
WHERE renda > 6000
OR idade > 10;
/*
Índices no Postgres são estruturas que melhoram a eficiencia
das consultas em bancos de dados.
Eles aceleram a recuperação de dados, permitindo que o sistema
encontre registros mais rapidamente, evitando a necessidade de
percorrer todas as linhas de uma tabela para encontrar
informações especificas.
Um indice é semelhante ao indices de um livro, que ajuda
a localizar informações repidamente.
*/

CREATE UNIQUE INDEX idx_nome_unique ON pessoa (nome);

SELECT * FROM pessoa;

INSERT INTO pessoa VALUES(14, 'Marge', 40, 5000, 2);

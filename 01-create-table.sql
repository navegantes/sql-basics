/* Criar a ossa primeira tabela
tabela 01: Familia
tabela 02: Pessoa
*/

-- Comando para criar tabelas
CREATE TABLE familia(
  id INT PRIMARY KEY NOT NULL,
  nome VARCHAR(40) NOT NULL
);

-- Comando para criar a tabela Pessoa e relacionar com familia
CREATE TABLE pessoa(
	id INT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	idade int NOT NULL,
	renda REAL,
	familia_id INT REFERENCES familia(id) NOT NULL
);
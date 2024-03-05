-- Inserir registros na tabela

-- INSERT INTO familia(id, nome) VALUES(1, 'Simpsons');
-- INSERT INTO familia VALUES(2, 'Addams');

/*
INSERT INTO pessoa(id, nome, idade, renda, familia_id) VALUES
(1, 'Homer', 39, 4000, 1),
(2, 'Marge', 36, 6000, 1),
(3, 'Bart', 12, 20, 1),
(4, 'Lisa', 10, 0, 1),
(5, 'Maggie', 1, 0, 1);
*/

INSERT INTO pessoa(id, nome, idade, renda, familia_id) VALUES
(6, 'Gomez', 38, 8000, 2),
(7, 'Morticia', 35, 8000, 2),
(8, 'Wandinha', 12, 0, 2),
(9, 'Feioso', 10, 0, 2),
(10, 'Vovó Addams', 62, 6000, 2);

select * from pessoa order by nome asc;
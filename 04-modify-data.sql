-- Update

-- Altera a renda
-- UPDATE pessoa SET renda = 6500 where id = 1;
-- alterar a idade
--UPDATE pessoa SET idade = 41 where id = 1;
UPDATE pessoa
SET renda = 7500, idade = 40
where id = 1;

SELECT * FROM pessoa where id = 1;
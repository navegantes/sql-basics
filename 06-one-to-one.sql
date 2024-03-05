-- Trabalhar relacionamento 1 para 1
-- Traer o conceito de clube
-- Criar a tabela matricula: dataassoc, data encerramento
-- Matricular o Homer e Marge - 10/10/2018

/*
create table matricula(
	id serial primary key not null,
	dt_associacao date not null,
	dt_encerramento date,
	pessoa_id int not null references pessoa(id)
);
*/

insert into 
matricula(	dt_associacao,	pessoa_id)
values
('10/10/2018', 1),
('10/10/2018', 2);

--  select * from matricula ;
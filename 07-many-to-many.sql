-- Trabalhar relacionameto muitos para muitos
-- Criar tabela de equipamentos (id, descrição)
-- Criar tabela reserva de equipamentos (id, data reserva, data devolução, matricula, equipamento)
/*
 * INserir equipamentos
 * kit volei
 * kit beach tenis
 * Prancha
 * skate
 * bola de futebol
 */
-- Reservar equipamento para o Homer

create table equipamento(
	id serial primary key not null,
	descricao varchar(200) not null
);

create table reserva_equipamento(
	id serial primary key not null,
	dt_reserva date not null,
	dt_devolucao date null,
	equipamento_id int not null references equipamento(id),
	matricula_id int not null  references matricula(id)
);
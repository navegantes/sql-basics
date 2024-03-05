insert into equipamento(descricao)
values
('Kit volei'),
('Kit beach tenis'),
('Prancha'),
('Skate'),
('Bola de futebol');

select * from equipamento;

-- Reservar bola para o Homer
insert into reserva_equipamento(dt_reserva, equipamento_id, matricula_id)
values
(now(), 5, 1);

select * from reserva_equipamento;
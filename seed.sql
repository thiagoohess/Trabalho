INSERT INTO cliente (nome, cpf, telefone, email) VALUES
('Carlos Mendes', '11122233344', '912345678', 'carlos.mendes@email.com'),
('Fernanda Lima', '55566677788', '923456789', 'fernanda.lima@email.com'),
('Roberto Nunes', '99988877766', '934567890', 'roberto.nunes@email.com');

INSERT INTO pet (nome, especie, porte, nascimento, fk_id_cliente) VALUES
('Thor', 'CACHORRO', 'MEDIO', '2020-02-15', 1),
('Luna', 'GATO', 'PEQUENO', '2022-06-05', 2),
('Bidu', 'CACHORRO', 'GRANDE', '2018-11-20', 3);

INSERT INTO servicos (nome, preco, duracao_min) VALUES
('Vacinação', 90.00, 20),
('Hidratação de Pelagem', 80.00, 50),
('Exame de Rotina', 150.00, 40);

INSERT INTO agendamento (fk_id_pet, fk_id_servico, data_hora, status, observacao) VALUES
(1, 1, '2025-09-15 10:00:00', 'AGENDADO', 'Aplicar vacina múltipla'),
(2, 2, '2025-09-16 13:30:00', 'AGENDADO', 'Hidratação para pelos longos'),
(3, 3, '2025-09-17 15:00:00', 'AGENDADO', 'Exame anual do cachorro');
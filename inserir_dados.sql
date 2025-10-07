INSERT INTO membros (nome, dataNascimento, telefone, email) VALUES
('Ana Costa', '1998-03-15', '+351912345678', 'ana.costa@gym.pt'),
('João Silva', '1989-11-02', '+351913334455', 'joao.silva@gym.pt'),
('Marta Lopes', '2000-06-21', '+351914556677', 'marta.lopes@gym.pt'),
('Pedro Gomes', '1995-09-05', '+351915667788', 'pedro.gomes@gym.pt'),
('Sofia Ramos', '1992-01-10', '+351916778899', 'sofia.ramos@gym.pt');


INSERT INTO pts (nome, especialidade, telefone, email) VALUES
('Carlos Pinto', 'Musculação', '+351917111222', 'carlos.pinto@gym.pt'),
('Helena Sousa', 'Cardio e HIIT', '+351917333444', 'helena.sousa@gym.pt'),
('Miguel Rocha', 'CrossFit', '+351917555666', 'miguel.rocha@gym.pt');



INSERT INTO aulas (nome, dia, horario, idPT) VALUES
('Spinning', 'Segunda', '18:00:00', 2),
('CrossFit', 'Terça', '19:00:00', 3),
('Musculação Guiada', 'Quinta', '17:00:00', 1),
('HIIT', 'Sexta', '18:30:00', 2),
('Alongamentos', 'Domingo', '10:00:00', 1);



INSERT INTO plano_treino (nome, diasDaSemana, idMembro) VALUES
('Força e Resistência', 'Segunda,Quinta', 1),
('Cardio Intenso', 'Terça,Sexta', 2),
('Funcional', 'Segunda,Quarta,Sexta', 3),
('Musculação Total', 'Segunda,Quinta,Sábado', 4),
('Equilíbrio e Mobilidade', 'Domingo', 5);



INSERT INTO inscricoes (dataInscricao, idMembro, idPlano) VALUES
('2025-01-05', 1, 1),
('2025-01-10', 2, 2),
('2025-01-12', 3, 3),
('2025-01-15', 4, 4),
('2025-01-20', 5, 5);
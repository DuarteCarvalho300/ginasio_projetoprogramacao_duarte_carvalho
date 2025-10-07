SHOW TABLES;



DESCRIBE membros;



SELECT * FROM membros;



SELECT m.nome AS Membro, p.nome AS Plano, p.diasDaSemana
FROM membros m
JOIN plano_treino p ON m.idMembro = p.idMembro;



SELECT a.nome AS Aula, a.dia, p.nome AS PT
FROM aulas a
JOIN pts p ON a.idPT = p.idPT;


SELECT COUNT(*) AS TotalMembros FROM membros;



SELECT p.nome AS PT, COUNT(a.idAula) AS NumAulas
FROM pts p
LEFT JOIN aulas a ON p.idPT = a.idPT
GROUP BY p.nome;



UPDATE plano_treino SET nome = 'Força Máxima' WHERE idPlano = 1;


DELETE FROM inscricoes WHERE idInscricao = 5;
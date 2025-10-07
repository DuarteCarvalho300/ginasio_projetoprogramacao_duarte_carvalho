SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS inscricoes;
DROP TABLE IF EXISTS plano_treino;
DROP TABLE IF EXISTS aulas;
DROP TABLE IF EXISTS pts;
DROP TABLE IF EXISTS membros;
SET FOREIGN_KEY_CHECKS = 1;



CREATE TABLE membros (
idMembro INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
dataNascimento DATE NOT NULL,
telefone VARCHAR(20),
email VARCHAR(100)
);



CREATE TABLE pts (
idPT INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(100),
telefone VARCHAR(20),
email VARCHAR(100)
);

CREATE TABLE aulas (
idAula INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
dia ENUM('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo') NOT NULL,
horario TIME,
idPT INT NOT NULL,
FOREIGN KEY (idPT) REFERENCES pts(idPT) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE plano_treino (
idPlano INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
diasDaSemana VARCHAR(100),
idMembro INT NOT NULL,
FOREIGN KEY (idMembro) REFERENCES membros(idMembro) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE inscricoes (
idInscricao INT AUTO_INCREMENT PRIMARY KEY,
dataInscricao DATE NOT NULL DEFAULT (CURRENT_DATE()),
idMembro INT NOT NULL,
idPlano INT NOT NULL,
FOREIGN KEY (idMembro) REFERENCES membros(idMembro) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (idPlano) REFERENCES plano_treino(idPlano) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE INDEX idx_membro_plano ON plano_treino(idMembro);
CREATE INDEX idx_membro_inscricao ON inscricoes(idMembro);
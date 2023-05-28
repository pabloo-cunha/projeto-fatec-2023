SELECT * FROM usuario
SELECT * FROM hora
SELECT * FROM equipe
SELECT * FROM cliente
SELECT * FROM equipe_cliente
SELECT * FROM equipe_usuario

DROP TABLE usuario;
DROP TABLE hora;
DROP TABLE equipe;
DROP TABLE cliente;
DROP TABLE equipe_cliente;
DROP TABLE equipe_usuario;

INSERT INTO usuario (matricula, senha, nome, cargo, situacao)  
VALUES ('123456', 'CAF1A3DFB505FFED0D024130F58C5CFA', 'Lucas Oliveira', 'RH', 'ATIVO');
INSERT INTO usuario (matricula, senha, nome, cargo, situacao)  
VALUES ('12345', 'CAF1A3DFB505FFED0D024130F58C5CFA', 'Lukas Fernando', 'Gestor', 'ATIVO');
INSERT INTO usuario (matricula, senha, nome, cargo, situacao)  
VALUES ('1234', 'CAF1A3DFB505FFED0D024130F58C5CFA', 'Pablo Cunha', 'Colaborador', 'ATIVO');
INSERT INTO equipe (nome_equipe)
VALUES ('ALPHA');
INSERT INTO cliente (empresa, responsavel, email, telefone, projeto)
VALUES ('COMPANY', 'Rafael Lopes', 'rafael.lopes@company.com', '12987654321', 'Modelando CRUD');
INSERT INTO equipe_cliente (id_equipe, id_cliente)
VALUES (1,1);
INSERT INTO equipe_usuario (id_equipe, matricula)
VALUES (1,'123456');
INSERT INTO equipe_usuario (id_equipe, matricula)
VALUES (1,'12345');
INSERT INTO equipe_usuario (id_equipe, matricula)
VALUES (1,'1234');
INSERT INTO hora (matricula, data_hora_inicial, data_hora_final, justificativa, id_equipe, tipo_hora, id_cliente) 
VALUES ('123456', '2023/05/21 08:00', '2023/05/21 15:00', 'Trabalhando', 1, 'Sobreaviso', 1);

UPDATE equipe_usuario SET id_equipe = 2 WHERE matricula = '123456';
UPDATE hora SET justificativa_status = 'Não autorizado' WHERE matricula = '123456';

-- QUERY

SELECT usuario.matricula,
	   usuario.nome
FROM usuario
LEFT JOIN equipe_usuario ON equipe_usuario.matricula = usuario.matricula
LEFT JOIN equipe ON equipe.id_equipe = equipe_usuario.id_equipe
WHERE nome_equipe != ''
ORDER BY equipe.nome_equipe LIKE 'DRAGONS' DESC
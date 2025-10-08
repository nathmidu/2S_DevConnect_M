--Comando para usar um banco já criado
USE tb_escola_M;


--COMANDO PARA INSERIR UM NOVO REGISTRO 
INSERT INTO tb_escola(nome,endereço)
VALUES('Moura Branco', 'Rua Tapajós 1085- Olimpico');

SELECT * FROM tb_escola;

--REGISTRO NA TABELA ALUNO 
INSERT INTO tb_aluno(nome,cpf,data_nasc,matricula,id_escola )
VALUES 
('Nathalia', '81599873826', '2001/01/30', 'oQ5hC2ZrP1', 1),
('Joao', '35009455030', '2008/07/25', 'fJwipzWz6p', 1);

--NOVOS REGISTROS DE ALUNOS
INSERT INTO tb_aluno(nome,cpf,data_nasc,matricula,id_escola )
VALUES 
('Beatriz', '49103845670', '2001/01/30', 'Asjf5t7j9s', 1),
('Priscila', '67802567940', '2007/09/10', 'hSeiol8F45', 1),
('Claudia', '28603503428', '2001/01/30', 'Gwlmngi8gs', 1);

SELECT * FROM tb_aluno;

 --REGISTRO NA TABELA TURMA 
 INSERT INTO tb_turma( numero_sala,periodo, serie,nome_turma,id_escola ) VALUES
 (102,'tarde', 1,'1 Ano B',1),
 (201,'Manha',2,'2 Ano A',1),
 (202,'Moite', 2,'2 Ano B',1);

 SELECT * FROM tb_turma

 INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova, id_aluno)
 VALUES 
 ('Marcos Mungo','Banco de Dados', '01:00:00',10, '2025/08/20', 1),
 ('Fernanda', 'Historia', '02:40:00',10, '2025/09/25', 2);


 SELECT * FROM tb_prova

 --REGISTRO NA TABELA PROVA
 --DURACAO 'HH: MN:SS' = '13:30:00'
 --NOTA 9.5 OU 10 OU 100 OU 0.0

 --TABELA TURMAPROVA - INTERMEDIÁRIA

 INSERT INTO tb_turma_prova(id_turma, id_prova)
 VALUES 
 (2,9),
 (2,8);

 SELECT * FROM tb_turma_prova;
 
 UPDATE tb_aluno
 SET nome = 'Ellen'
 WHERE cpf = '35009455030';

 SELECT * FROM tb_aluno;

 --COMANDO PARA ATUALIZA O NOME DE UM ALUNO PELO SEU CPF
 UPDATE tb_aluno
 SET nome = 'isabella'
 WHERE cpf = '35009455030'

 --COMANDO QUE EXCLUI UM REGISTRO 
 DELETE FROM tb_aluno
 WHERE matricula = 'hSeiol8F45';

 SELECT * FROM tb_aluno

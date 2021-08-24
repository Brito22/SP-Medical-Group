USE SP_MEDICAL_GROUP
GO

INSERT INTO TipoUsuario (NomeTipo)
VALUES ('Administrador'),('Medico'),('Paciente')

SELECT * FROM TipoUsuario

INSERT INTO SITUACAO(TipoSituacao)
VALUES ('Realizado'),('Cancelado'),('Agendado')

SELECT * FROM SITUACAO

INSERT INTO ESPECIALIDADE(NomeEspecialidade)
VALUES ('Acupuntura'),('Anestesiologia'),('Angiologia'),('Cardiologia'),('Cirurgia Cardiovascular'),('Cirurgia da Mão')	,('Cirurgia do Aparelho Digestivo')	,('Cirurgia Geral')	,('Cirurgia Pediátrica'),('Cirurgia Plástica'),('Cirurgia Torácica'),('Cirurgia Vascular'),('Dermatologia'),('Radioterapia'),('Urologia'),('Pediatria'),('Psiquiatria')	

SELECT * FROM ESPECIALIDADE

INSERT INTO CLINICA(NomeClinica, Cnpj, RazaoSocial, Endereço)
VALUES ('ClinicaPorssale',86400902000130,'SP Medical Group','Av. Barão Limeira, 532, São Paulo, SP')	

SELECT * FROM CLINICA

INSERT INTO USUARIO(IdTipoUsuario, Email, Senha)
VALUES (1,'adm@gmail.com','adm123'),(2,'ricardo.lemos@spmedicalgroup.com.br','123'),
(2,'roberto.possarle@spmedicalgroup.com.br','345'),(2,'helena.souza@spmedicalgroup.com.br','678'),
(3,'ligia@gmail.com','912'),(3,'alexandre@gmail.com','345'),
(3,'fernando@gmail.com','670'),(3,'henrique@gmail.com','234'),
(3,'joao@hotmail.com','523'),(3,'bruno@gmail.com','685'),
(3,'mariana@outlook.com','809')

SELECT * FROM USUARIO

INSERT INTO MEDICO(IdEspecialidade, IdClinica, IdUsuario, Crm, NomeMedico)
VALUES (2,7,2,54356,'Ricardo Lemos'),(17,7,3,53452,'Roberto Possarle'),
(16,7,4,65463,'Helena Strada')

SELECT * FROM MEDICO

INSERT INTO PACIENTE(IdUsuario, NomePaciente, DataNascimento, Telefone, Rg, Cpf, Endereco)
VALUES (5, 'Ligia', 10/13/1983, '11 3456-7654', '43522543-5', '94839859000', 'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
(6,	'Alexandre', 7/23/2001, '11 98765-6543', '32654345-7', '73556944057', 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
(7,	'Fernando', 10/10/1978, '11 97208-4453', '54636525-3', '16839338002', 'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200'),
(8,	'Henrique', 10/13/1985, '11 3456-6543', '54366362-5',	'14332654765', 'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
(9, 'João', 8/27/1975, '11 7656-6377', '53254444-1', '91305348010', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380'),
(10, 'Bruno', 3/21/1972, '11 95436-8769',	'54566266-7', '79799299004', 'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001'),
(11, 'Mariana', 03/05/2018, NULL, '54566266-8','13771913039','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140')


SELECT * FROM PACIENTE

INSERT INTO CONSULTA(IdMedico, IdPaciente, IdSituacao, Data_Hora, Descrição)
VALUES 
(3, 7, 1 ,01/20/2020 15:00, 'lala'),
(2, 2, 2 ,01/06/2020 10:00, 'lele'),	
(2, 3, 1 ,02/07/2020 11:00, 'rara'),	
(2, 2, 1 ,02/06/2018 10:00, 'rere'),	
(3, 4, 2 ,02/07/2019 11:00, 'asdasfa'),	
(1, 7, 3 ,03/08/2020 15:00, 'asdasfa'),	
(3, 4, 3 ,03/09/2020 11:00, 'asdass')	
//

SELECT * FROM CONSULTA




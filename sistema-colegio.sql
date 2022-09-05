create table sistema.cidade
(
	idCidade serial primary key,
	nmCidade varchar(150),
	UF varchar(2)
);

create table sistema.bairro
(
	idBairro serial primary key,
	nmBairro varchar(150)
);

create table sistema.disciplinas
(
	idDisciplina serial primary key,
	NmDisciplina varchar(100),
	Horas integer
);

create table sistema.endereco
(
	idEndereco serial primary key,
	Logradouro varchar(200),
	CEP varchar(8),
	idBairro integer REFERENCES sistema.bairro (idBairro),
	idCidade integer REFERENCES sistema.cidade (idCidade)
);

create table sistema.turmas
(
	idTurma serial primary key,
	NmTurma varchar(100)
);

create table sistema.alunos
(
	idAluno serial primary key,
	Nome varchar(100),
	CEP varchar(8),
	Matricula varchar(10),
	data_Nasc date,
	idturma integer REFERENCES sistema.turmas (idturma),
	Nr_endereco varchar(10),
	idEndereco integer REFERENCES sistema.endereco (idEndereco),
	idBairro integer REFERENCES sistema.bairro (idBairro),
	idCidade integer REFERENCES sistema.cidade (idCidade),
	CPF varchar(11)
);

create table sistema.professor
(
	idProfessor serial primary key,
	Nome varchar(100),
	CEP varchar(8),
	data_Nasc date,
	Nr_endereco varchar(10),
	idEndereco integer REFERENCES sistema.endereco (idEndereco),
	idBairro integer REFERENCES sistema.bairro (idBairro),
	idCidade integer REFERENCES sistema.cidade (idCidade),
	CPF varchar(11)
);
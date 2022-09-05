create schema escola;

create schema agenda;

create table escola.alunos (
	idaluno serial primary key,
	nome varchar(100),
	telefone integer,
	cpf varchar(11),
	endereco varchar(100),
	idade integer,
	datanasc date
);

create table escola.professores (
	idprofessor serial primary key, 
	nome varchar(100), 
	telefone integer, 
	cpf varchar(11), 
	endereco varchar(100), 
	datanasc date, 
	salário double precision
);

create table escola.turma (
	idturma serial primary key, 
	descricao varchar(100)
);

create table agenda.teste ();

drop table agenda.teste;

drop schema agenda;

insert into escola.alunos
(nome, telefone, cpf, endereco, idade, datanasc)
values
('Catarina', 988154851, '11111111111', 'Estrada da Independência', 33, '04/03/1989'),
('Maria', 22318411, '22222222222', 'Estrada da Independência', 2, '04/03/1989'),
('João', 20190344, '33333333333', 'Estrada da Independência', 20, '04/03/1989'),
('Caroline', 992248050, '44444444444', 'Estrada da Independência', 33, '04/03/1989'),
('Carlos', 2654874, '55555555555', 'Estrada da Independência', 33, '04/03/1989'),
('José', 23651478, '66666666666', 'Estrada da Independência', 33, '04/03/1989'),
('Vilza', 8965475, '77777777777', 'Estrada da Independência', 33, '04/03/1989');

insert into escola.professores
(nome, telefone, cpf, endereco, datanasc, salário)
values
('Catarina', 988154851, '11111111111', 'Estrada da Independência', '04/03/1989', '500'),
('Maria', 22318411, '22222222222', 'Estrada da Independência', '04/03/1989', 600),
('João', 20190344, '33333333333', 'Estrada da Independência', '04/03/1989', 700);

insert into escola.turma
(descricao)
values
('Primeira turma criada'),
('Segund turma criada'),
('Terceira turma criada');

delete from escola.alunos where idaluno = 7;

update escola.alunos set endereco = 'Endereço novo' where idaluno = 2;

update escola.alunos set endereco = 'Mais um endereço novo' where idaluno = 3;

select * from escola.alunos where idade > 20;

select * from escola.alunos where telefone is not null;

select * from escola.professores where salario < 1000;

alter table escola.alunos add nomemae varchar(100);

alter table escola.alunos rename nomemae to nome_mae
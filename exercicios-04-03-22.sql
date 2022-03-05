create table alunos(
	id serial primary key,
	nome varchar(100),
	email varchar(255),
	endereco varchar(255),
	mensalidade decimal,
	maior_idade bool
);

-- Exercício 1)
select * from alunos where maior_idade = true;

-- Exercício 2)
select * from alunos where maior_idade = false;

-- Exercício 3)
select * from alunos where mensalidade > 300;

-- Exerício 4)
select * from alunos where mensalidade < 300;

-- Exercício 5)
select * from alunos limit 5;

-- Exercício 6)
select nome as name, email, endereco as address, mensalidade as montlhyPayment, maior_idade as of_age from alunos;

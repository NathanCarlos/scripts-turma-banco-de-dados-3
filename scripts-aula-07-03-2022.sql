create table alunos(
	id serial primary key,
	nome varchar(100),
	email varchar(255),
	endereco varchar(255),
	mensalidade decimal,
	maior_idade bool
);

-- Create, Read, Update e Delete(CRUD)

select * from carros;

-- CONDIÇÃO = WHERE
-- >, >=, <, <=, like, in, is not null
select * from carros where ano_versao > 2018;

select * from carros where ano_modelo is not null;

-- Order by
-- Crescente(ASC), (DESC)

select * from carros order by modelo;

select * from carros order by marca, modelo;

select * from carros order by km;

select * from carros order by ano_modelo asc;

select * from carros order by ano_modelo desc;

select * from carros where id = 13;


-- C(Create)

insert into carros (modelo, marca, ano_versao, ano_modelo, vendido, km, preco, data_entrada) values
('Cruze', 'Chevrolet', 2020, 2021, true, 16000, 110000, default),
('Hrv', 'Honda', 2019, 2020, default, 25000, 100000, '2022-03-05'),
('Hrv', 'Honda', 2020, 2021, default, 180000, 115000, default);

insert into carros values
(default, 'Creta', 'Hyundai', 2021, 2021, default, default, default, 100000);

-- R(Read)
select * from carros;

alter table carros
alter column km set default 1000;

alter table carros
rename quilometragem to km;

-- U(Update)
update carros set km = 0 where id = 17;
update carros set ano_versao = 2021, ano_modelo = 2022, preco = 150000
where id = 14;

update carros set vendido = false;

-- D(Delete)
delete from carros;

delete from carros where id = 1;

-- CRUD

-- Backup

-- Exportar Tabela
copy carros
	to 'C:\Users\natha\Desktop\carros.csv'
	delimiter ';'
	csv
	header;

-- Exportar Resultado de uma query

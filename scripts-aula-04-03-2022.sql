create database lets_carros;


create table carros(
	id serial primary key,
	modelo varchar(50),
	marca varchar(50),
	ano_versao smallint,
	ano_modelo smallint,
	vendido boolean default false,
	km int default 0,
	data_entrada date default current_date
);

create table clientes(
	id serial primary key,
	nome varchar(255),
	email varchar(255),
	senha varchar(15)
);


alter table carros
add column preco decimal;


select * from carros;
select * from clientes;

select nome, email from clientes;

-- * -> ALL
select * from clientes;
select * from carros;
-- Busca trazendo somente algumas colunas
select id, nome from clientes;
-- Alias(Apelido)
select modelo, km, data_entrada from carros;
select modelo as model, km, data_entrada as teste from carros;

-- Limit
-- Cláusula WHERE
-- Operadores de comparação(=, >, >=, <, <=, in, like)
-- Todos os registros
select * from carros;
-- Registros da tabela de carros com km maior que 20000;
select * from carros where km > 20000;
select * from carros where preco >= 75000;
select * from carros where ano_modelo = 2021;
select * from carros where km < 10000;
select * from carros where km <= 10000;
select * from carros where km in (25000, 26000);
select * from carros where id in (1, 3);
select * from carros where modelo = 'Onix';
-- Começam com a letra O;
select * from carros where modelo like 'O%';
-- Terminam com a letra o;
select * from carros where modelo like '%o';

-- Contenha parte da palavra
select * from carros where upper(modelo) like upper('%j%');

-- Operadores and(&&) e or(||)
select * from carros where km > 15000 and ano_versao = 2019;
select * from carros where ano_versao = 2019 or preco = 70000;


select * from carros limit 5;


drop table carros;


create schema financeiro;
create schema rh;

drop schema rh CASCADE;

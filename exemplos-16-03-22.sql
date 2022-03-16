select * from produtos;

-- Quantos produtos tem na minha tabela
-- aggregate functions COUNT(Contar o número de registros), MIN, MAX, AVG, SUM.

-- COUNT
select count(*) from produtos;

select count(*) from categorias;

select count(*) from produtos where preco > 300 and preco < 600;

-- MIN(Menor valor(número) de uma coluna)

select min(preco) from produtos;

select min(preco) from produtos where preco > 300 and preco < 800;

-- MAX(Maior valor(número) de uma coluna)

select max(preco) from produtos;

-- AVG(Média de valores de uma coluna)

select avg(preco) from produtos where id_categoria = 1;

select avg(preco) from produtos;

-- SUM(Soma de valores de uma coluna)
select sum(preco) from produtos;
select sum(preco) from produtos where id_categoria = 1;

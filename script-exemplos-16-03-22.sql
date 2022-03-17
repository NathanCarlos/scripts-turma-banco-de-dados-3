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

select sum(preco) as soma_produtos from produtos;
select avg(preco) as media_produtos from produtos;



select * from produtos;

select count(*) from produtos where id_categoria = 1;
select count(*) from produtos where id_categoria = 2;
select count(*) from produtos where id_categoria = 3;

select sum(preco) from produtos where id_categoria = 1;
select sum(preco) from produtos where id_categoria = 2;
select sum(preco) from produtos where id_categoria = 3;

select count(*), id_categoria from produtos
group by id_categoria;

select sum(preco), id_categoria from produtos
group by id_categoria;

select avg(preco), id_categoria from produtos
group by id_categoria;

select avg(p.preco), c.id, c.nome from produtos p
inner join categorias c on p.id_categoria = c.id
group by c.id
order by c.nome;




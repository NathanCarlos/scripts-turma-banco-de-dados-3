select * from produtos;

select * from categorias;

-- VIEWS
-- VIEWS TEMPORÁRIAS e VIEWS MATERIALIZADAS

select p.id, p.id_categoria, p.descricao, p.preco, p.url_imagem, c.nome, c.ativa
from produtos p inner join categorias c on p.id_categoria = c.id
where p.preco > 700;

-- VIEW TEMPORÁRIA
-- É APAGADA QUANDO REINICIA A SESSÃO;
-- É ATUALIZADA AUTOMÁTICAMENTE QUANDO FAZEMOS QUALQUER OPERAÇÃO DE (INSERT, UPDATE, DELETE) NAS TABELAS QUE ORIGINAM A QUERY DA VIEW;

create view produtos_categorias as 
select p.id, p.id_categoria, p.descricao, p.preco, p.url_imagem, c.nome, c.ativa
from produtos p
inner join categorias c on p.id_categoria = c.id;

select * from produtos_categorias;
select * from produtos_categorias where preco > 700;


update produtos set preco = 399 where id = 19;

insert into produtos values
(default, 1, 'SSD 256GB', '600', '');


-- VIEW MATERIALIZADA
-- NÃO É APAGADA QUANDO REINIA A SESSÃO;
-- NÃO É ATUALIZADA AUTOMÁTICAMENTE QUANDO FAZEMOS OPERAÇÕES DE INSERT, UPDATE E DELETE;

create materialized view produtos_categorias_materialiada as 
select p.id, p.id_categoria, p.descricao, p.preco, p.url_imagem, c.nome, c.ativa
from produtos p
inner join categorias c on p.id_categoria = c.id
with data;

select * from produtos_categorias_materialiada; 

refresh materialized view produtos_categorias_materialiada;


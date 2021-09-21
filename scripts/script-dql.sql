-- 2 consultas com junção:

select c.nome, p.id, p.data_pedido
from pedidos p
inner join clientes c on p.id_cliente = c.id;

select p.id, pr.nome, pp.quantidade, c.nome, pr.valor_unit
from pedidos p
left join produtos_pedidos pp on p.id = pp.id_pedidos
left join produtos pr on pp.id_produtos = pr.id
left join clientes c on p.id_cliente = c.id;

select p.nome
from produtos p
where LOWER(p.nome) like 'i%';

-- usando count() e group by()

select count (e.estado), e.estado
from endereco e, clientes c
where e.id = c.id_enderecos
group by e.estado
order by e.estado;

-- SQL para construção de nota fiscal

select pd.id as id_pedido, 
pd.data_pedido,
concat(c.nome, ' ', c.sobrenome) as cliente, 
c.id as id_cliente, 
concat(e.rua, ' ', e.numero, ' ', e.complemento, ' ', e.bairro, ' ', e.cidade, '-', e.estado, ', ', e.pais) as endereco, 
sum (pp.quantidade) as qtd_itens,
array_agg('(' || pp.quantidade || ') ' || p.nome || ' ' || p.valor_unit || ' = ' || p.valor_unit * pp.quantidade) as produtos,
sum(p.valor_unit * pp.quantidade) as total
from produtos p
inner join produtos_pedidos pp on pp.id_produtos = p.id
inner join pedidos pd on pp.id_pedidos = pd.id
inner join clientes c on pd.id_cliente = c.id
inner join endereco e on c.id_enderecos = e.id
group by pd.id, c.nome, c.sobrenome, c.id, e.rua, e.numero, e.complemento, e.bairro, e.cidade, e.estado, e.pais
order by pd.data_pedido;

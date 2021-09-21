create table categoria (
	id serial primary key not null,
	nome text not null unique
);

create table funcionarios (
	id serial primary key not null,
	nome text,
	cpf varchar(11) unique
);

create table produtos (
	id serial primary key not null,
	nome text,
	descricao text,
	valor_unit money,
	id_funcionarios integer,
	id_categoria integer,
	foreign key (id_categoria) references categoria(id) on delete cascade on update cascade,
	foreign key (id_funcionarios) references funcionarios(id) on delete cascade on update cascade	
);

create table dt_fabric(
    id serial primary key not null,
    dt_fab date,
    id_produtos integer,
    foreign key (id_produtos) references produtos(id)
);

create table estoque (
    id serial primary key not null,
    quantidade integer,
    id_produtos integer,
    foreign key (id_produtos) references produtos(id) on delete cascade on update cascade
);

create table endereco (
    id serial primary key not null,
    rua text not null,
    numero integer not null,
    complemento text,
    bairro text not null,
    cidade text not null,
    estado text not null,
    pais text not null,
    cep integer not null
);

create table clientes (
    id serial primary key not null,
    nome text,
    sobrenome text,
    idusuario integer,
    email text,
    cpf varchar(11) unique,
    data_nascimento date,
    id_enderecos integer,
    foreign key (id_enderecos) references endereco (id) on delete cascade on update cascade
);

create table pedidos (
    id serial primary key not null,
    data_pedido date,
    id_pedidos integer,
    foreign key (id_pedidos) references produtos (id)  on delete cascade on update cascade
);

create table produtos_pedidos( 
	id serial primary key not null,
	id_produtos integer,
	id_pedidos integer,
    foreign key (id_produtos) references produtos (id) on delete cascade on update cascade,
    foreign key (id_pedidos) references pedidos (id) on delete cascade on update cascade
);
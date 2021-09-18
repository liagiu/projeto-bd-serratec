-- Insert categoria

insert into categoria (nome)
values ('Celulares'),
('Notebooks'),
('Videogames'),
('TVs'),
('Acessórios');

-- Insert de dados dos funcionários

insert into funcionarios (nome, cpf) 
values ('Gustavo', 22233344486),
('Priscila', 88801023200),
('Jonas', 23432112346),
('Carlos', 28535855100),
('Felipe', 10777153404);

-- Insert produtos

insert into produtos (nome, descricao, valor_unit, id_categoria, id_funcionarios) 
values ('iphone 12','celular aphone 12 8gb 5,5 polegadas',6000, 1,1 ),
('Aspire 5','Notebook Acer Aspire 5 256gb ssd tela 15,8 polegadas',4500, 2,2),
('TV LG NANOCELL','Tv LG Nanocell 60 polegadas 4k',7000, 3,3),
('IPHONE 5','celular aphone 12 8gb 5,5 polegadas',6000, 4,4),
('TECLADO ASUS','Teclado para desktop retroiluminado',700, 5,5);

-- Insert endereços

insert into endereco (rua, numero, complemento, bairro, cidade, estado, pais, cep)
values ('Rua Boa Vista', 8677, 'Ap. 405' , 'São José', 'Rio Branco', 'AC', 'Brasil', 90289264),
('Rua Santa Maria', 2975, 'Casa 8' , 'Planalto', 'Tailândia', 'PA', 'Brasil', 69948331),
('Rua Vinte e Um', 903, 'Anexo 5' , 'São Francisco', 'Criciúma', 'SC', 'Brasil', 57781853),
('Rua Primeiro de Maio', 6756, 'Sala 7' , 'São Cristóvão', 'Itacoatiara', 'AM', 'Brasil', 59889557),
('Rua Dezoito', 1405, 'Sobreloja 8' , 'Santo Antônio', 'Brasília', 'DF', 'Brasil', 90289264);

-- Insert clientes

insert into clientes (nome, sobrenome, idusuario, email, cpf, data_nascimento, id_enderecos)
values ('Pedro', 'Lima', 46582, 'pedro.lima@gmail.com', 61164469061, '1943-11-29', 1),
('Rafael ', 'Fernandes', 85642, 'rafael.fernandes@gmail.com', 23174379350, '1987-08-18', 2),
('Lucas', 'Souza', 32168, 'lucas.souza@gmail.com', 25580613644, '1979-05-05',3),
('Amanda ', 'Alves', 74535, 'amanda.alves@gmail.com', 25580613644, '1954-01-14',4),
('Ana', 'Cavalcanti', 45367, 'ana.cavalcanti@gmail.com', 14460764156, '1985-08-26',5);

-- Insert data de fabricação

insert into dt_fabric (dt_fab, id_produtos)
values ('2020-11-20', 1),
('2020-05-03', 2),
('2020-09-04', 3),
('2021-03-09', 4),
('2021-01-11', 5);

-- Insert estoque

insert into estoque (quantidade, id_produtos)
values (30, 1),
(23, 2),
(10, 3),
(40, 4),
(100, 5);
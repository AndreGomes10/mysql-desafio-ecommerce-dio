use ecommerce;
-- Inserir clientes
INSERT INTO clients (Fname, Minit, Lname, CPF, Address) VALUES 
('Ana', 'M.', 'Santos', '11122233344', 'Rua E, 789'),
('Pedro', 'R.', 'Oliveira', '55566677788', 'Av. F, 456'),
('Mariana', 'A.', 'Silveira', '99988877766', 'Rua G, 321'),
('Lucas', 'V.', 'Ferreira', '33344455566', 'Av. H, 123'),
('Carla', 'K.', 'Almeida', '77788899900', 'Rua I, 987');

-- Inserir produtos
-- Inserir produtos
INSERT INTO product (Pname, Classification_kids, Category, Avaliacao, size) VALUES 
('Fone', false, 'Eletrônico', 4.8, 'Único'),
('Jaqueta', false, 'Vestimenta', 4.5, 'M'),
('Boneca', true, 'Brinquedo', 4.2, 'Pequeno'),
('Chocolate', false, 'Alimentos', 4.7, 'Único'),
('Cadeira', false, 'Móveis', 4.9, 'Grande');


-- Inserir pedidos
INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) VALUES 
(3, 'Confirmado', 'Pedido de boneca', 8.00, false),
(4, 'Em processamento', 'Pedido de chocolate', 15.00, true),
(5, 'Confirmado', 'Pedido de cadeira', 30.00, false),
(1, 'Confirmado', 'Pedido de fone de ouvido', 12.00, false),
(2, 'Cancelado', 'Pedido de jaqueta', 20.00, true);

-- Inserir localizações de estoque
INSERT INTO productStorage (storageLocation, quantity) VALUES 
('Prateleira 1', 10),
('Estoque 2', 20),
('Prateleira 3', 15),
('Estoque 4', 25),
('Prateleira 5', 30);

-- Inserir fornecedores
INSERT INTO supplier (SocialName, CNPJ, contact) VALUES 
('Fornecedor C', '11122233344455', '333222111'),
('Fornecedor D', '55566677788899', '777888999'),
('Fornecedor E', '99988877766655', '555444333'),
('Fornecedor F', '33344455566677', '999888777'),
('Fornecedor G', '77788899900011', '111000222');

-- Inserir vendedores
INSERT INTO seller (SocialName, AbsName, CNPJ, CPF, location, contact) VALUES 
('Vendedor Z', 'Empresa Z', '11122233344455', '22233344455', 'Rua J, 567', '888999777'),
('Vendedor W', 'Empresa W', '55566677788899', '44455566677', 'Av. K, 890', '222333444'),
('Vendedor V', 'Empresa V', '99988877766655', '66677788855', 'Rua L, 234', '999888777'),
('Vendedor U', 'Empresa U', '33344455566677', '88899900011', 'Av. M, 901', '111222333'),
('Vendedor T', 'Empresa T', '77788899900011', '00011122233', 'Rua N, 345', '444555666');

-- Inserir relacionamentos produto-vendedor
INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES 
(1, 1, 50),
(2, 2, 100),
(3, 3, 20),
(4, 4, 200),
(5, 5, 30);

-- Inserir relacionamentos produto-pedido
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES 
(1, 1, 2, 'Disponivel'),
(2, 2, 3, 'Sem estoque'),
(3, 3, 1, 'Disponivel'),
(4, 4, 2, 'Sem estoque'),
(5, 5, 1, 'Disponivel');

-- Inserir localizações de estoque
INSERT INTO storageLocation (idLproduct, idLstorage, Location) VALUES 
(1, 1, 'Prateleira 1'),
(2, 2, 'Estoque 2'),
(3, 3, 'Prateleira 3'),
(4, 4, 'Estoque 4'),
(5, 5, 'Prateleira 5');



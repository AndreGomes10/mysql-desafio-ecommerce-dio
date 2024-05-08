use ecommerce;
-- Recuperações simples com SELECT Statement
SELECT * FROM clients;
SELECT * FROM product;
SELECT * FROM orders;
SELECT * FROM supplier;
SELECT * FROM seller;
SELECT * FROM productSeller;
SELECT * FROM productOrder;
SELECT * FROM storageLocation;

-- Filtros com WHERE Statement
SELECT * FROM clients WHERE CPF = '11122233344';
SELECT * FROM product WHERE Category = 'Eletrônico';
SELECT * FROM orders WHERE orderStatus = 'Confirmado';
SELECT * FROM supplier WHERE CNPJ = '11122233344455';
SELECT * FROM productSeller WHERE idPseller = 1;

-- Crie expressões para gerar atributos derivados
SELECT idClient, CONCAT(Fname, ' ', Lname) AS fullName
FROM clients;

SELECT SUM(quantity) AS totalQuantity
FROM productStorage;

-- Defina ordenações dos dados com ORDER BY
SELECT * FROM clients ORDER BY Lname ASC;
SELECT * FROM supplier ORDER BY SocialName DESC;

SELECT idSeller, SocialName, (SELECT COUNT(*) FROM productSeller WHERE productSeller.idPseller = seller.idSeller) AS totalSales
FROM seller
ORDER BY totalSales DESC;

-- Condições de filtros aos grupos – HAVING Statement
SELECT idPOorder, COUNT(*) AS numProducts
FROM productOrder
GROUP BY idPOorder
HAVING numProducts > 0;

SELECT Category, AVG(Avaliacao) AS avgRating
FROM product
GROUP BY Category
HAVING avgRating > 4;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
SELECT orders.idOrder, clients.Fname, clients.Lname, orders.orderStatus
FROM orders
JOIN clients ON orders.idOrderClient = clients.idClient;

SELECT product.Pname, productStorage.quantity
FROM product
LEFT JOIN productStorage ON product.idProduct = productStorage.idProdStorage;










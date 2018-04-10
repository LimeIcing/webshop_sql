/*
-----------------
THIS PART IS THE
DATABASE CREATION
SCRIPT!
-----------------
*/

DROP DATABASE IF EXISTS webshop;
CREATE database webshop;
USE webshop;

CREATE TABLE customers
( 
	customer_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	customer_email VARCHAR(30) NOT NULL,
    customer_address VARCHAR(100) NOT NULL,
    customer_cvr VARCHAR(10)
);

CREATE TABLE products
(
	product_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    product_name VARCHAR(80) NOT NULL,
    product_category VARCHAR(50) NOT NULL,
    product_price DECIMAL(8,2) NOT NULL,
    product_description VARCHAR(255),
    product_quantity INT NOT NULL
);

CREATE TABLE customer_orders
(
	order_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE product_orders
(
	order_id INT NOT NULL,
    product_id INT NOT NULL,
    product_quantity INT DEFAULT 1,
    PRIMARY KEY(order_id, product_id),
    FOREIGN KEY(order_id) REFERENCES customer_orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

/*
-----------------
THIS PART INSERTS
VALUES INTO THE
DATABASE!
-----------------
*/

INSERT INTO customers(customer_id, customer_email, customer_address, customer_cvr) 
VALUES 	(NULL, 'Søren@gmail.com', 'Skodvej 37 1234 blabla', NULL),
		(NULL, 'Tobias@gamil.com', 'Mågevej 55 1234 blabla', NULL),
		(NULL, 'Mira@gmail.com', 'Muddivej 45 1234 blabla', NULL),
		(NULL, 'Felix@mail.dk', 'Mosevej 34 1234 blabla', NULL),
		(NULL, 'Bob@mail.com', 'Fasanvej 67 1234 blabla', '2415639840'),
		(NULL, 'Vera@hotmail.com', 'Katholmvej 22 1234 blabla', '4287510943'),
		(NULL, 'Jesper@mail.dk', 'Røde Anesvej 12 4321 fakeftw', NULL),
		(NULL, 'Filippa@gmail.com', 'Roskildevej 45 1234 gg', NULL),
		(NULL, 'Fakevirksomhed@firmamail.dk', 'Firmavej 32 1234 blalba', '2173894380'),
		(NULL, 'Andenfakevirksomhed@mail.dk', 'Firmavej 37 1234 blabla', '3273541358');
        
INSERT INTO products(product_name, product_category, product_price, product_description, product_quantity)
VALUES 	('GTX1080', 'Grafik Kort', 20000.95, 'Et pisse dyrt grafik kort!', 50),
		('GTX970', 'Grafik Kort', 7000.95, 'Et mindre pisse dyrt grafik kort!', 1),
        ('i7-7800K', 'CPU', 4500.50, 'En rigtig god CPU', 10),
        ('AK-Racing', 'Gamer Stol', 3500.95, 'En overpriced gamer stol', 25),
        ('Logitech MX518', 'Computer Mus', 500.00, 'Verdens bedste computer mus!', 3),
        ('Playstation 4', 'Konsol', 3199.95, 'Bedste konsol', 13),
		('Dual Shock 4', 'Joystick', 500.00, 'Controller til PS4', 30),
        ('Nintendo Switch', 'Konsol', 3199.95, 'En konsol med et gimmick', 16),
        ('Zelda, Breath of the Wild', 'Konsol Spil', 350.00, 'Switch Exclusive spil', 30),
        ('God of War', 'Konsol Spil', 450.95, 'PS4 Exclusive', 22);
        
INSERT INTO customer_orders(customer_id)
VALUES 	(1), (1), (2), (3), (4), (4), (5), (6), (6), (7), (8), (9), (9), (10), (10);
        
INSERT INTO product_orders(order_id, product_id, product_quantity)
VALUES  (1, 2, 1), (1, 4, 2), 
		(5, 3, 2), (5, 7, 1), (5, 8, 1),
        (3, 9, 1), (3, 4, 1),
        (10, 5, 3), (10, 6, 2),
        (8, 6, 2);
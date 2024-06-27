CREATE DATABASE inventoryDB;
USE inventoryDB;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    quantity INT,
    category VARCHAR(255)
);

INSERT INTO products (name, description, price, quantity, category) VALUES
('Product 1', 'Description for product 1', 10.99, 100, 'Category A'),
('Product 2', 'Description for product 2', 5.99, 200, 'Category B'),
('Product 3', 'Description for product 3', 20.99, 50, 'Category A'),
('Product 4', 'Description for product 4', 7.99, 150, 'Category C'),
('Product 5', 'Description for product 5', 15.99, 80, 'Category B');

-- Retrieve All Products from the products Table
SELECT * FROM products;

-- Retrieve Products with a Price Less Than a Specified Amount
SELECT * FROM products WHERE price < 10;

-- Retrieve Products with More Than a Specified Quantity in Stock
SELECT * FROM products WHERE quantity > 100;

-- Update the Price of a Specific Product
UPDATE products SET price = 12.99 WHERE name = 'Product 1';

-- Delete a Product from the products Table
DELETE FROM products WHERE name = 'Product 2';




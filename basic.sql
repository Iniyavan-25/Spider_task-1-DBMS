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

INSERT INTO products (name, description, price, quantity, category)
VALUES 
('Laptop', '15-inch display, 8GB RAM, 256GB SSD', 999.99, 10, 'Electronics'),
('Smartphone', 'Latest model, 128GB storage', 699.99, 25, 'Electronics'),
('Desk Chair', 'Ergonomic office chair', 149.99, 50, 'Furniture'),
('Book', 'Mystery novel', 19.99, 100, 'Books'),
('Headphones', 'Noise-cancelling headphones', 199.99, 30, 'Electronics');


-- Retrieve All Products from the products Table
SELECT * FROM products;

-- Retrieve Products with a Price Less Than a Specified Amount
SELECT * FROM products WHERE price < 200.00;

-- Retrieve Products with More Than a Specified Quantity in Stock
SELECT * FROM products WHERE quantity > 20;

-- Update the Price of a Specific Product
UPDATE products SET price = 12.99 WHERE name = 'Laptop';

-- Delete a Product from the products Table
DELETE FROM products WHERE name = 'Book';




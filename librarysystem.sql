-- Database for SHOPPINGdb - A Simple E-commerce System
-- PLP Database Assignment Week 8
-- Create database
CREATE DATABASE SHOPPINGdb;
USE SHOPPINGdb;
-- Create Customers table
-- Stores information about registered customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    registered_on DATE NOT NULL
) ENGINE=InnoDB;
-- Create Products table
-- Stores details of products available in the shop
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
) ENGINE=InnoDB;
-- Create Orders table
-- Tracks orders placed by customers
-- Linked to customers table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE=InnoDB;
-- Create Order Items table
-- Tracks which products are part of an order
-- Many-to-Many relationship between orders and products
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
) ENGINE=InnoDB;
-- Create Suppliers table
-- Stores supplier information
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100),
    phone_number VARCHAR(20)
) ENGINE=InnoDB;

-- Create Product-Supplier table
-- Many-to-Many relationship between products and suppliers

CREATE TABLE product_suppliers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    supplier_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
) ENGINE=InnoDB;


INSERT INTO customers (full_name, email, phone_number, registered_on) VALUES
('Mary Njuguna', 'mary.njuguna@gmail.com', '+254700112233', '2024-02-15'),
('Robin Kiprop', 'robin.kiprop@yahoo.com', '+254701445566', '2024-03-10'),
('Ethan Kigen', 'ethan.kigen@outlook.com', '+254702778899', '2024-04-01');

INSERT INTO products (product_name, price, stock_quantity) VALUES
('Smartphone X1', 25000.00, 50),
('Laptop Pro 14', 85000.00, 20),
('Wireless Earbuds', 4500.00, 100);

INSERT INTO suppliers (supplier_name, contact_email, phone_number) VALUES
('TechSource Ltd', 'techsource@gmail.com', '+254703334455'),
('GadgetHub Enterprises', 'gadgethub@outlook.com', '+254704556677');

INSERT INTO product_suppliers (product_id, supplier_id) VALUES
(1, 1),
(2, 1),
(3, 2);


INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2024-05-01', 'Completed'),
(2, '2024-05-03', 'Pending');


INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2), 
(1, 3, 1), 
(2, 2, 1); 
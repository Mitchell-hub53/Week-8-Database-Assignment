📄 README.md for ShoppingDB Project
1. Project Title

ShoppingDB – Simple E-commerce Database

2. Project Overview

This project is a relational database designed for a simple e-commerce store called ShoppingDB.
The goal is to demonstrate key database management concepts including:

Table creation with proper constraints

Relationships (One-to-Many, Many-to-Many)

Data integrity using primary and foreign keys

Sample data insertion with realistic values

3. Database Design
3.1 Entities and Tables

Customers – Stores customer information (name, email, phone, registration date).

Products – Stores product details (name, price, quantity).

Orders – Records orders placed by customers.

Order_Items – Links products to specific orders (Many-to-Many).

Suppliers – Stores supplier information.

Product_Suppliers – Links suppliers to products (Many-to-Many).

3.2 Relationships

One Customer → Many Orders

One Order → Many Order Items

One Product → Many Order Items

Many Products ↔ Many Suppliers

4. Database Schema Deliverables

The SQL file includes:

CREATE DATABASE ShoppingDB;

CREATE TABLE statements for all entities

Primary Keys (PRIMARY KEY)

Foreign Keys (FOREIGN KEY)

Constraints (NOT NULL, UNIQUE)

5. Sample Data Inserted
Customers

Mary Njuguna → mary.njuguna@gmail.com

Robin Kiprop → robin.kiprop@yahoo.com

Ethan Kigen → ethan.kigen@outlook.com

Products

Smartphone X1

Laptop Pro 14

Wireless Earbuds

Suppliers

TechSource Ltd

GadgetHub Enterprises

Orders & Order Items

Mary ordered 2 Smartphones + 1 Wireless Earbud

Robin ordered 1 Laptop
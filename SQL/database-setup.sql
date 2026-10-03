CREATE DATABASE saucedemo_qa;

USE saucedemo_qa;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    user_type VARCHAR(30) NOT NULL
);

INSERT INTO users (username, password, user_type)
VALUES
('standard_user', 'secret_sauce', 'standard'),
('locked_out_user', 'secret_sauce', 'locked'),
('problem_user', 'secret_sauce', 'problem'),
('error_user', 'secret_sauce', 'error'),
('performance_glitch_user', 'secret_sauce', 'performance');


CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50)
);

INSERT INTO products (product_name, price, category)
VALUES
('Sauce Labs Backpack', 29.99, 'Backpacks'),
('Sauce Labs Bike Light', 9.99, 'Accessories'),
('Sauce Labs Bolt T-Shirt', 15.99, 'T-Shirts'),
('Sauce Labs Fleece Jacket', 49.99, 'Jackets'),
('Sauce Labs Onesie', 7.99, 'Clothing'),
('Test.allTheThings() T-Shirt (Red)', 15.99, 'T-Shirts');


CREATE TABLE cart (
    cart_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO cart (user_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 2, 2);

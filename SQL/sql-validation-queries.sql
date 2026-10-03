USE saucedemo_qa;

-- 1. Verify users
SELECT *
FROM users;


-- 2. Verify products
SELECT *
FROM products;


-- 3. Verify cart records
SELECT *
FROM cart;


-- 4. Verify cart details using JOIN
SELECT
    u.username,
    p.product_name,
    p.price,
    c.quantity
FROM cart c
JOIN users u
    ON c.user_id = u.user_id
JOIN products p
    ON c.product_id = p.product_id;


-- 5. Calculate cart total
SELECT
    u.username,
    SUM(c.quantity) AS total_items,
    SUM(p.price * c.quantity) AS cart_total
FROM cart c
JOIN users u
    ON c.user_id = u.user_id
JOIN products p
    ON c.product_id = p.product_id
WHERE u.username = 'standard_user'
GROUP BY u.username;


-- 6. Verify product price
SELECT
    product_name,
    price
FROM products
WHERE product_name = 'Sauce Labs Backpack';


-- 7. Count cart items
SELECT
    u.username,
    COUNT(c.cart_id) AS cart_items
FROM users u
JOIN cart c
    ON u.user_id = c.user_id
WHERE u.username = 'standard_user'
GROUP BY u.username;


-- 8. Negative product search
SELECT *
FROM products
WHERE product_name = 'Non Existing Product';


-- 9. Check for invalid product references in cart
SELECT
    c.cart_id,
    c.product_id,
    p.product_name
FROM cart c
LEFT JOIN products p
    ON c.product_id = p.product_id
WHERE p.product_id IS NULL;

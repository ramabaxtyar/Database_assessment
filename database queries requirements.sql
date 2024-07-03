database queries requirements

--------------------------------------------------------1)
SELECT 
    p.Supplier AS supplier_name,
    COUNT(p.Product_id) AS number_of_products
FROM 
    product p
GROUP BY 
    p.Supplier;

---------------------------------------------------------2)

SELECT 
    p.Name AS product_name,
    p.Supplier AS supplier_name,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.quantity * o.price) AS total_amount
FROM 
    orders o
JOIN 
    product p ON o.items = p.Product_id
GROUP BY 
    p.Product_id, p.Name, p.Supplier
ORDER BY 
    total_quantity_sold DESC
LIMIT 10;


------------------------------------------------------------3) 
SELECT 
    c.Full_name AS customer_name,
    c.Email AS customer_email,
    SUM(o.quantity * o.price) AS total_purchases
FROM 
    customer c
JOIN 
    orders o ON c.id = o.order_owner
GROUP BY 
    c.id, c.Full_name, c.Email
ORDER BY 
    total_purchases DESC;


----------------------------------------------------------------4) 

SELECT 
    r.return_id,
    o.order_id,
    c.Full_name AS customer_name,
    p.Name AS product_name,
    r.return_date,
    r.return_reason,
    o.quantity,
    o.price
FROM 
    returns r
JOIN 
    orders o ON r.order_id = o.order_id
JOIN 
    customer c ON o.order_owner = c.id
JOIN 
    product p ON o.items = p.Product_id;


------------------------------------------------5)

SELECT 
    p.Name AS product_name,
    p.Supplier AS supplier_name,
    o.quantity,
    o.price,
    o.order_date
FROM 
    product p
JOIN 
    orders o ON p.Product_id = o.items
WHERE 
    p.Product_category = 'fashion' AND
    o.order_date >= DATE_FORMAT(CURRENT_DATE - INTERVAL 1 MONTH, '%Y-%m-01') AND
    o.order_date < DATE_FORMAT(CURRENT_DATE, '%Y-%m-01');



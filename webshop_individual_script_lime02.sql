CREATE VIEW product_order_view AS
SELECT 	order_id,
		product_name, 
        product_price, 
        product_orders.product_quantity, 
        product_price * product_orders.product_quantity AS total_price
FROM products
JOIN product_orders ON product_orders.product_id = products.product_id
WHERE product_orders.order_id = 3;

SELECT 	order_id,
		product_name, 
        product_price, 
        product_quantity, 
        total_price
FROM product_order_view;
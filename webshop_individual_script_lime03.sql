INSERT INTO product_orders(order_id, product_id)
VALUES (3, 8);

UPDATE product_orders
SET product_quantity = 2
WHERE order_id = 3 AND product_id = 9;

DELETE FROM product_orders
WHERE order_id = 3 AND product_id = 4;

SELECT 	order_id,
		product_name, 
        product_price, 
        product_quantity, 
        total_price
FROM product_order_view;
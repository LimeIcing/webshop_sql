CREATE VIEW customer_order_view AS
SELECT order_id FROM customer_orders
WHERE customer_id = 2;

SELECT order_id FROM customer_order_view;
-- Task 1: Display order_details table with customer_id from orders table using subquery in SELECT

SELECT 
    od.*,
    (SELECT o.customer_id 
     FROM orders o 
     WHERE o.id = od.order_id) AS customer_id
FROM order_details od;

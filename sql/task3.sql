-- Task 3: Use subquery in FROM to select rows with quantity>10 and calculate average quantity grouped by order_id

SELECT 
    order_id,
    AVG(quantity) AS avg_quantity
FROM (
    SELECT order_id, quantity
    FROM order_details
    WHERE quantity > 10
) AS filtered_orders
GROUP BY order_id;

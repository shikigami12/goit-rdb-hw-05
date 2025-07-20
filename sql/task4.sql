-- Task 4: Solve task 3 using WITH operator to create temporary table temp

WITH temp AS (
    SELECT order_id, quantity
    FROM order_details
    WHERE quantity > 10
)
SELECT 
    order_id,
    AVG(quantity) AS avg_quantity
FROM temp
GROUP BY order_id;

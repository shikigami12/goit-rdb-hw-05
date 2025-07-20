-- Task 2: Display order_details table filtered by orders where shipper_id=3 using subquery in WHERE

SELECT od.*
FROM order_details od
WHERE od.order_id IN (
    SELECT o.id
    FROM orders o
    WHERE o.shipper_id = 3
);

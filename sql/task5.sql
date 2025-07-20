-- Task 5: Create a function with two FLOAT parameters that divides the first by the second

DROP FUNCTION IF EXISTS divide_numbers;

DELIMITER //

CREATE FUNCTION divide_numbers(num1 FLOAT, num2 FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF num2 = 0 THEN
        RETURN NULL; -- Handle division by zero
    END IF;
    RETURN num1 / num2;
END //

DELIMITER ;

-- Apply the function to the quantity attribute from order_details table
-- Using 2.5 as the second parameter (arbitrary number)
SELECT 
    id,
    order_id,
    product_id,
    quantity,
    divide_numbers(quantity, 2.5) AS divided_quantity
FROM order_details;

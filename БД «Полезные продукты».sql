SELECT DISTINCT product_name
FROM Products;

SELECT p.product_id, p.product_name, p.price
FROM Products p
JOIN Nutritional_information n ON p.product_id = n.product_id
WHERE n.fiber > 5;

SELECT p.product_name
FROM Products p
JOIN Nutritional_information n ON p.product_id = n.product_id
ORDER BY n.protein DESC
LIMIT 1;

SELECT c.category_id, SUM(p.calories) AS total_calories
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN Nutritional_information n ON p.product_id = n.product_id
WHERE n.fat <> 0
GROUP BY c.category_id;

SELECT c.category_name, AVG(p.price) AS average_price
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
GROUP BY c.category_name;

SELECT
    pc.category_name,
    SUM(p.price * oi.quantity) AS total_revenue
FROM
    ProductCategories pc
JOIN
    Products p
ON
    pc.category_id = p.category_id
JOIN
    OrderItems oi
ON
    p.product_id = oi.product_id
GROUP BY
    pc.category_name
ORDER BY
    total_revenue DESC;

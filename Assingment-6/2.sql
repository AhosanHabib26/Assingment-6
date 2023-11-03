SELECT
    oi.order_id,
    p.product_name,
    oi.quantity,
    oi.total_amount
FROM
    OrderItems oi
JOIN
    Products p
ON
    oi.product_id = p.product_id
ORDER BY
    oi.order_id ASC;

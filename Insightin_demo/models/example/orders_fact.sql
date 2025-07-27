SELECT 
    b.c_id,
    a.order_id,
    SUM(a.price) AS total_price
FROM {{ ref('orders') }} a
JOIN {{ ref('customer') }} b 
  ON a.order_id = b.order_id
GROUP BY b.c_id, a.order_id

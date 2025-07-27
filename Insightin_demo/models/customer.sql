WITH cte AS (
    SELECT 
        a.C_id,
        b.order_id, 
        COUNT(b.order_id) AS ordercount
    FROM [de_learn2_customers] a 
    JOIN [de_learn2_Orders] b ON a.C_id = b.C_id
    GROUP BY a.C_id, b.order_id
)
SELECT * FROM cte

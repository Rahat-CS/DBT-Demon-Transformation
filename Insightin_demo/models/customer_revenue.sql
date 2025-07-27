{{
  config(materialized='view')
}}
SELECT 
    c_id,
    SUM(total_price) AS revenue
FROM {{ ref('orders_fact') }}
GROUP BY c_id

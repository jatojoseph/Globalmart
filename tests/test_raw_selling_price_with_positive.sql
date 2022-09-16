with 
orders as (
    SELECT * FROM {{ ref('raw_orders') }}
)

SELECT
    orderid,
    SUM(orderfillingprice) AS total_sp
FROM orders
group by orderid
having total_sp<0
SELECT
    customerid,
    segment,
    country,
    SUM(orderprofit) AS profit
FROM {{ ref('stg_orders') }}
GROUP BY
    customerid,
    segment,
    country
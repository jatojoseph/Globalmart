SELECT
    productid,
    productname,
    category,
    subcategory,
    SUM(orderprofit) AS profit
FROM {{ ref('stg_orders') }}
GROUP BY
    productid,
    productname,
    category,
    subcategory
SELECT 
-- from raw orders
o.orderid,
o.orderdate,
o.shipdate,
o.orderfillingprice - o.ordercostprice As orderprofit,
ordercostprice,
orderfillingprice,
-- from raw customer
c.customername,
c.segment,
c.country,
-- from raw product
p.category,
p.productname,
p.subcategory
FROM {{ ref('raw_orders') }} AS o
LEFT JOIN {{ ref('raw_customer') }} AS c
ON o.customerid = c.customerid
LEFT JOIN {{ ref('raw_product') }} AS p
ON o.productid = p.productid

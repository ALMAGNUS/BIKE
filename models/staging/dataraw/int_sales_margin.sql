 SELECT
      products_id,
      date_date,
      orders_id,
      revenue,
      quantity,
      purchase_price,
      ROUND(s.quantityp.purchase_price,2) AS purchase_cost,
      ROUND(s.revenue - s.quantityp.purchase_price, 2) AS margin
  FROM {{ref("stg_rawsales")}} s
  LEFT JOIN {{ref("stg_rawproduct")}} p
      USING (products_id)
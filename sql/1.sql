-- Select the name of each customer and his or her latest order date

SELECT c.name, max(o.order_date)
FROM customers c, orders o
WHERE c.customer_id = o.customer_id
  GROUP BY c.customer_id
  ORDER BY c.customer_id;

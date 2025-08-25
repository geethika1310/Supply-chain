CREATE VIEW product_sales_summary AS
SELECT 
    "sku",
    "product_type",
    round(SUM("revenue_generated":: numeric),2) AS total_revenue,
    round(SUM("no_of_prod_sold"::numeric),2) AS total_units_sold,
    round(AVG("Price"::numeric),2) AS avg_price
FROM supply_chain
GROUP BY "sku", "product_type"
ORDER BY total_revenue DESc
CREATE VIEW customer_insights AS 
SELECT 
customer_demographics,
round(sum(revenue_generated::numeric),2) AS total_sales,
sum(no_of_prod_sold) AS total_units_sold
FROM supply_chain
GROUP BY customer_demographics
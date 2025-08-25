CREATE VIEW inventory_status AS 
SELECT sku,
product_type,
stock_levels,
order_quantities,
CASE WHEN "stock_levels" < 20 THEN 'low stock'
WHEN "stock_levels"> 100 THEN 'over stock'
ELSE 'normal'
END AS stock_status
FROM supply_chain
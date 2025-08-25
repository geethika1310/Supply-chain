CREATE VIEW route_analysis AS 
SELECT 
Routes,
count(*) AS shipping_count,
round(avg(shipping_times::NUMERIC),2) AS avg_shipping_time,
round(avg(Costs::numeric),2) AS avg_shipping_costs
FROM supply_chain
GROUP BY Routes
ORDER BY avg_shipping_time
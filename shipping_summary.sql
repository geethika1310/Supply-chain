CREATE VIEW shipping_summary AS
SELECT 
    "shipping_carriers",
    "transportation_modes",
    round(AVG("shipping_times"::numeric),2) AS avg_shipping_time,
    round(AVG("shipping_costs"::numeric),2) AS avg_shipping_cost
FROM supply_chain
GROUP BY "shipping_carriers", "transportation_modes"
ORDER BY avg_shipping_cost ASC;

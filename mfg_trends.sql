CREATE VIEW manufacturing_trends AS
SELECT 
    sku,
    round(AVG(production_volumes::numeric),2) AS avg_production_volume,
    round(AVG(manufacturing_costs::numeric),2) AS avg_mfg_cost,
    round(AVG(manufacturing_lead_time::numeric),2) AS avg_mfg_lead_time
FROM supply_chain
GROUP BY sku
ORDER BY avg_production_volume DESC;

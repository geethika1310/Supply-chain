CREATE  VIEW supplier_metrics AS 
SELECT 
supplier_name,
location,
round(avg(supplier_lead_time::numeric),2) AS avg_supplier_lead_time,
round(avg(manufacturing_lead_time::NUMERIC),2)AS avg_man_lead_time,
round(avg(defect_rates::decimal),2) AS avg_defect_rate
FROM supply_chain
GROUP BY supplier_name,location
ORDER BY avg_supplier_lead_time asc
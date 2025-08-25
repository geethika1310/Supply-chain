CREATE OR REPLACE  VIEW product_quality_summary as
SELECT 
sku,
LOCATION,
round(avg(defect_rates::numeric),2) AS avg_defect_rates,
count(CASE WHEN inspection_results = 'Fail' THEN 1 END ) AS fail_count,
count(CASE WHEN inspection_results= 'Pass' THEN 1 END) AS pass_count,
count(CASE WHEN inspection_results = 'Pending' THEN 1 END ) AS pending_count
fROM supply_chain
GROUP BY sku,location
-- Conversions by Region
SELECT Region,
    COUNT(*) AS total_converted
FROM synthetic_insurance_data
WHERE Conversion_Status = 1
GROUP BY Region;
-- Top 5 Regions by Claims Frequency
SELECT Region,
    COUNT(*) AS claims_count
FROM synthetic_insurance_data
WHERE Claims_Frequency >= 1
GROUP BY Region
ORDER BY claims_count DESC
LIMIT 5;
-- Average Time to Conversion by Source of Lead
SELECT Source_of_Lead,
    ROUND(AVG(Time_to_Conversion), 2) AS avg_days
FROM synthetic_insurance_data
WHERE Conversion_Status = 1
GROUP BY Source_of_Lead
ORDER BY avg_days;
-- Avg. Total Discount by Region 
SELECT Region,
    ROUND(AVG(Total_Discounts), 2) AS avg_discount
FROM synthetic_insurance_data
GROUP BY Region
ORDER BY avg_discount DESC;
-- Avg. Premium by Policy Type 
SELECT Policy_Type,
    ROUND(AVG(Premium_Amount), 2) AS avg_premium
FROM synthetic_insurance_data
GROUP BY Policy_Type;
-- Customer Segmentation
SELECT customer_segment, AVG(avg_monthly_spend) as avg_spend
FROM customers
GROUP BY customer_segment;

-- Income vs Spending
SELECT 
    CASE 
        WHEN annual_income < 30000 THEN 'Low'
        WHEN annual_income BETWEEN 30000 AND 70000 THEN 'Medium'
        ELSE 'High'
    END as income_group,
    AVG(avg_monthly_spend)
FROM customers
GROUP BY income_group;

-- Engagement Analysis
SELECT 
    CASE 
        WHEN browsing_time_minutes > 200 THEN 'High'
        ELSE 'Low'
    END as engagement_group,
    AVG(avg_monthly_spend)
FROM customers
GROUP BY engagement_group;
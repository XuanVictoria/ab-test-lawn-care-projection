SELECT 
    group_version,
    COUNT(*) AS total_exposed,
    SUM(CASE WHEN sign_up = 'Y' THEN 1 ELSE 0 END) AS conversions,
    ROUND(AVG(CASE WHEN sign_up = 'Y' THEN 1.0 ELSE 0.0 END), 4) AS conversion_rate
FROM total_sample
GROUP BY group_version;

SELECT 
    version_group,
    SUM(sale_price - treatment_cost) AS total_net_revenue
FROM total_sales
GROUP BY version_group;

WITH session_counts AS (
    SELECT 
        version_group,
        COUNT(DISTINCT CASE WHEN session = 1 THEN user_id END) AS start_users,
        COUNT(DISTINCT CASE WHEN session = 8 THEN user_id END) AS end_users
    FROM total_sales
    GROUP BY version_group
)
SELECT 
    version_group,
    CAST(end_users AS FLOAT) / start_users AS retention_rate
FROM session_counts;

SELECT 
    version_group,
    session,
    COUNT(DISTINCT user_id) AS active_users,
    SUM(sale_price - treatment_cost) AS session_net_revenue,
    -- This shows the 'purity' of the revenue per active user
    SUM(sale_price - treatment_cost) / COUNT(DISTINCT user_id) AS active_arpu
FROM total_sales
GROUP BY version_group, session
ORDER BY session, version_group;
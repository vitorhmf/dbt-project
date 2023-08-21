WITH br_data AS (
    SELECT 
        role,
        experience_level,
        salary_range_usd_yr,
        COUNT(id) AS br_count
    FROM {{ ref('fact_br_data_pros') }}
    GROUP BY 1, 2, 3
),
us_data AS (
    SELECT 
        role,
        experience_level,
        salary_range_usd_yr,
        COUNT(id) AS us_count
    FROM {{ ref('fact_us_data_pros')}}
    GROUP BY 1, 2, 3
)
SELECT 
    COALESCE(a.role, b.role) as role,
    COALESCE(a.experience_level, b.experience_level) as experience_level,
    COALESCE(a.salary_range_usd_yr, b.salary_range_usd_yr) as salary_range_usd_yr,
    COALESCE(a.br_count, 0) AS br_count,
    COALESCE(b.us_count, 0) AS us_count
FROM br_data a
FULL JOIN us_data b 
ON a.role = b.role AND a.experience_level = b.experience_level AND a.salary_range_usd_yr = b.salary_range_usd_yr
ORDER BY 1, 2, 3

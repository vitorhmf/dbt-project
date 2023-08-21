WITH us_data_salaries AS(
    select * from {{ ref('us_data_salaries') }} 
)
SELECT 
    CAST(ROW_NUMBER() OVER (ORDER BY a.work_year) AS string) AS id,
    a.employee_residence as origin,
    a.job_title as role,
    b.experience_level,
    CASE    
        WHEN salary_in_usd < 10000 THEN 'up to 10k USD/yr'
        WHEN salary_in_usd BETWEEN 10000 AND 19999 THEN '10k to 20k USD/yr'
        WHEN salary_in_usd BETWEEN 20000 AND 39999 THEN '20k to 40k USD/yr'
        WHEN salary_in_usd BETWEEN 40000 AND 59999 THEN '40k to 60k USD/yr'
        WHEN salary_in_usd BETWEEN 60000 AND 99999 THEN '60k to 100k USD/yr'
        WHEN salary_in_usd >= 100000 THEN 'over 100k USD/yr'
    END AS salary_range_usd_yr,
    a.salary_in_usd as salary_usd_yr
FROM us_data_salaries a
LEFT JOIN {{ref('dim_us_experience')}} b ON a.experience_level = b.experience_level_short
WHERE a.job_title in ('Data Scientist', 'Data Analyst', 'Data Engineer')
    and a.employee_residence = 'US'
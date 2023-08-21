WITH us_data_salaries AS(
    select * from {{ ref('us_data_salaries') }} 
)
SELECT distinct
    experience_level AS experience_level_short,
    CASE
        WHEN experience_level = 'MI' THEN 'Mid'
        WHEN experience_level = 'EN' THEN 'Entry'
        WHEN experience_level = 'SE' THEN 'Senior'
        WHEN experience_level = 'EX' THEN 'Senior'
    END AS experience_level
FROM us_data_salaries
WITH state_of_data AS(
    select * from {{ ref('stg_br_data_salaries') }} 
)
SELECT 
    a.__P0____id__ AS id,
    "BR" AS origin,
    b.role,
    c.experience_level,
    --c.experience_avg,
    d.salary_range_usd_yr,
    d.salary_avg_usd_yr as salary_usd_yr
FROM state_of_data a
LEFT JOIN {{ref('dim_br_role')}} b ON a.__P2_f_____Cargo_Atual__ = b.pt_role
LEFT JOIN {{ref('dim_br_experience')}} c ON a.__P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = c.experience_range_br
LEFT JOIN {{ref('dim_br_salary')}} d ON a.__P2_h_____Faixa_salarial__  = d.salary_range_brl_month
WHERE a.__P2_f_____Cargo_Atual__ is not null
    and b.role <> 'Others'
    and b.role <> 'BI Analyst'
    and c.experience_level <> 'Without Experience'
WITH state_of_data AS(
    select * from {{ ref('state_of_data') }} 
)
SELECT DISTINCT
  __P2_f_____Cargo_Atual__ AS pt_role,
  CASE 
    WHEN __P2_f_____Cargo_Atual__ = 'Analista de Dados/Data Analyst' THEN 'Data Analyst'
    WHEN __P2_f_____Cargo_Atual__ = 'Cientista de Dados/Data Scientist' THEN 'Data Scientist'
    WHEN __P2_f_____Cargo_Atual__ = 'Engenheiro de Dados/Arquiteto de Dados/Data Engineer/Data Architect' THEN 'Data Engineer'
    WHEN __P2_f_____Cargo_Atual__ = 'Analista de BI/BI Analyst' THEN 'BI Analyst' 
  ELSE 'Others' END AS role
FROM state_of_data
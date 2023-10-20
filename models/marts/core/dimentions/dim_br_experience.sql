WITH state_of_data AS(
    select * from {{ ref('stg_br_data_salaries') }} 
)
SELECT distinct
  __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ AS experience_range_br,
  CASE
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 3 a 4 anos' THEN 'Mid'
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'Mais de 10 anos' THEN 'Senior' 
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 4 a 6 anos' THEN 'Mid'
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 1 a 2 anos' THEN 'Entry'
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'Não tenho experiência na área de dados' THEN 'Without Experience'
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'Menos de 1 ano' THEN 'Entry'
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 7 a 10 anos' THEN 'Senior'
  ELSE 'NA' END AS experience_level,
  CASE
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 3 a 4 anos' THEN ROUND(((3 + 4) / 2),1) 
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'Mais de 10 anos' THEN 12 
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 4 a 6 anos' THEN ROUND(((4 + 6) / 2),1) 
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 1 a 2 anos' THEN ROUND(((1 + 2) / 2),1) 
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'Não tenho experiência na área de dados' THEN 0
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'Menos de 1 ano' THEN ROUND(((0 + 1) / 2),1) 
    WHEN __P2_i_____Quanto_tempo_de_experi__ncia_na___rea_de_dados_voc___tem___ = 'de 7 a 10 anos' THEN ROUND(((7 + 10) / 2),1) 
  ELSE NULL END AS experience_avg
FROM state_of_data
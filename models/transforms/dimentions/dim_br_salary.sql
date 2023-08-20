WITH state_of_data AS(
    select * from {{ ref('state_of_data') }} 
)
SELECT distinct
    __P2_h_____Faixa_salarial__ as salary_range_brl_month,
    CASE 
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 4.001/mês a R$ 6.000/mês' THEN '10k to 20k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 8.001/mês a R$ 12.000/mês' THEN '20k to 40k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'Acima de R$ 40.001/mês' THEN 'over 100k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 20.001/mês a R$ 25.000/mês' THEN '40k to 60k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 3.001/mês a R$ 4.000/mês' THEN 'up to 10k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 16.001/mês a R$ 20.000/mês' THEN '40k to 60k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 25.001/mês a R$ 30.000/mês' THEN '60k to 100k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 2.001/mês a R$ 3.000/mês' THEN 'up to 10k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 12.001/mês a R$ 16.000/mês' THEN '20k to 40k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 6.001/mês a R$ 8.000/mês' THEN '10k to 20k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 1.001/mês a R$ 2.000/mês' THEN 'up to 10k USD/yr'
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 30.001/mês a R$ 40.000/mês' THEN '60k to 100k USD/yr' 
        WHEN __P2_h_____Faixa_salarial__ = 'Menos de R$ 1.000/mês' THEN 'up to 10k USD/yr'
    END AS salary_range_usd_yr,
      CASE 
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 4.001/mês a R$ 6.000/mês' THEN 
            ROUND(((4001 + 6000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 8.001/mês a R$ 12.000/mês' THEN 
            ROUND(((8001 + 12000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'Acima de R$ 40.001/mês' THEN 
            ROUND(50000 / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 20.001/mês a R$ 25.000/mês' THEN 
            ROUND(((20001 + 25000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 3.001/mês a R$ 4.000/mês' THEN 
            ROUND(((3001 + 4000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 16.001/mês a R$ 20.000/mês' THEN 
            ROUND(((16001 + 20000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 25.001/mês a R$ 30.000/mês' THEN 
            ROUND(((25001 + 30000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 2.001/mês a R$ 3.000/mês' THEN 
            ROUND(((2001 + 3000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 12.001/mês a R$ 16.000/mês' THEN 
            ROUND(((12001 + 16000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 6.001/mês a R$ 8.000/mês' THEN 
            ROUND(((6001 + 8000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 1.001/mês a R$ 2.000/mês' THEN 
            ROUND(((1001 + 2000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'de R$ 30.001/mês a R$ 40.000/mês' THEN 
            ROUND(((30001 + 40000) / 2) / {{ exchange_rate() }} * 12, 2)
        WHEN __P2_h_____Faixa_salarial__ = 'Menos de R$ 1.000/mês' THEN 
            ROUND(1000 / 4.97 * 12, 2)
    ELSE NULL
  END AS salary_avg_usd_yr
FROM state_of_data
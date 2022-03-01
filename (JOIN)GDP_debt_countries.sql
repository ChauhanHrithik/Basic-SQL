--PPG Debt and GDP Growth of different countries
select id.country_name
, id.country_code
, id.PPG_debt
, wdi.GDP_growth
from (select country_name
, country_code
, avg(value) as PPG_debt 
from`bigquery-public-data.world_bank_intl_debt.international_debt` 
where indicator_code = 'DT.AMT.BLAT.CD'
group by country_name
, country_code) id
inner join (select country_name
, country_code
, avg(value) as GDP_growth
from `bigquery-public-data.world_bank_wdi.indicators_data`
where indicator_code = 'NY.GDP.MKTP.KD.ZG'
group by country_name
, country_code) wdi
on id.country_code = wdi.country_code and id.country_name = wdi.country_name
order by wdi.GDP_growth desc 

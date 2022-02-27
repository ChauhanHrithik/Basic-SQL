--Average prices per square meter by neighborhood in Brazil
SELECT place_name
,avg(price_usd_per_m2) as avg_price_m2
FROM `properati-data-public.properties_br.properties_sell_201801` 
GROUP BY place_name
order by avg_price_m2 desc

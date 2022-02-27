--Average prices per square meter by neighborhood in Brazil overtime
SELECT ps18.place_name
,ps18.price_usd_per_m2 as avg_price_m2_2018
,ps17.price_usd_per_m2 as avg_price_m2_2017
FROM (select place_name, avg(price_usd_per_m2) as price_usd_per_m2
FROM `properati-data-public.properties_br.properties_sell_201801` 
GROUP BY place_name) ps18
inner join (select place_name, avg(price_usd_per_m2) as price_usd_per_m2
FROM `properati-data-public.properties_br.properties_sell_201701` 
GROUP BY place_name) ps17
on ps18.place_name = ps17.place_name

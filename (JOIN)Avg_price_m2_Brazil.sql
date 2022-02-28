--Average prices per square meter by neighborhood in Brazil overtime
select ps18.place_name
,ps18.price_usd_per_m2 as avg_price_m2_2018
,ps17.price_usd_per_m2 as avg_price_m2_2017
from (select place_name, avg(price_usd_per_m2) as price_usd_per_m2
from `properati-data-public.properties_br.properties_sell_201801` 
group by place_name) ps18
inner join (select place_name, avg(price_usd_per_m2) as price_usd_per_m2
from `properati-data-public.properties_br.properties_sell_201701` 
group by place_name) ps17
on ps18.place_name = ps17.place_name

--Average prices per square meter by neighborhood in Brazil
select place_name
,avg(price_usd_per_m2) as avg_price_m2
from `properati-data-public.properties_br.properties_sell_201801` 
group by place_name
order by avg_price_m2 desc

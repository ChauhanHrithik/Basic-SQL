--Average price of a room by neighborhood in Brazil
select place_name
,avg(price_aprox_usd) as avg_price 
from `properati-data-public.properties_br.properties_rent_201712` 
where rooms = 1
group by place_name

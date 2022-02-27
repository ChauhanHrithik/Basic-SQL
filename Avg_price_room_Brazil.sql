--Average price of a room by neighborhood in Brazil
SELECT place_name
,avg(price_aprox_usd) as avg_price 
FROM `properati-data-public.properties_br.properties_rent_201712` 
where rooms = 1
group by place_name

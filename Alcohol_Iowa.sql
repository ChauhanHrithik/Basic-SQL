--Most prefered alcohol in Iowa, US
SELECT item_description
,sum(bottles_sold) as bottles_sold
FROM `bigquery-public-data.iowa_liquor_sales.sales` 
group by item_description
order by bottles_sold desc 

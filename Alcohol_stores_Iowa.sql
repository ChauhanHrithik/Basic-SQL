--Best performing stores in Iowa in term of total bottles sold
select store_number
,store_name
,SUM(bottles_sold) as bottles_sold
from `bigquery-public-data.iowa_liquor_sales.sales`
group by store_number
, store_name
order by bottles_sold desc

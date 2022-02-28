--Best performing stores in Iowa in term of total bottles sold
SELECT store_number
,store_name
,SUM(bottles_sold) AS bottles_sold
FROM `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY store_number
, store_name
ORDER BY bottles_sold DESC

--U.S. states Maximum and Minimum ADI percentiles rankings overtime
SELECT state
,year
,max(area_deprivation_index_percent) AS max_ADI
,min(area_deprivation_index_percent) AS min_ADI
FROM `bigquery-public-data.broadstreet_adi.area_deprivation_index_by_census_block_group`
GROUP BY year
,state

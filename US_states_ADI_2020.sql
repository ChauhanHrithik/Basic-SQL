--U.S. states ADI percentiles rankings in 2020
SELECT state_fips_code
,state
,year
,AVG(area_deprivation_index_percent) AS ADI
FROM`bigquery-public-data.broadstreet_adi.area_deprivation_index_by_census_block_group`
where year = 2020
GROUP BY year
,state_fips_code
,state
ORDER BY state_fips_code

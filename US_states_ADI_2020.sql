--U.S. states ADI percentiles rankings in 2020
select state_fips_code
,state
,year
,AVG(area_deprivation_index_percent) as ADI
from `bigquery-public-data.broadstreet_adi.area_deprivation_index_by_census_block_group`
where year = 2020
group by year
,state_fips_code
,state
order by state_fips_code

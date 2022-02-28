--Average population and ADI value of different US Locations (zipcode wise)
select p.zipcode
,p.population
,adi.ADI
from (select zipcode, avg(population) as population
from `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
group by zipcode) p
inner join (select zipcode, avg(area_deprivation_index_percent) as ADI
from `bigquery-public-data.broadstreet_adi.area_deprivation_index_by_zipcode`
group by zipcode) adi
on p.zipcode = adi.zipcode

--Top crimes per borough, London from 2008 to 2016
select borough
, major_category
, sum(value) as Total_Incidents
from  `bigquery-public-data.london_crime.crime_by_lsoa`
group by borough
, major_category 
order by borough 
,Total_Incidents desc

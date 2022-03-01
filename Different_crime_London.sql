--Different type of crimes commited in London and there share in total (percentage)
select major_category
, sum(value) as Total_incidents 
, sum(value) * 100.0 / (select sum(value) from `bigquery-public-data.london_crime.crime_by_lsoa`) as Percentage_of_total
from `bigquery-public-data.london_crime.crime_by_lsoa`
group by major_category
order by Total_incidents desc

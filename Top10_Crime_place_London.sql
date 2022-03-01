--Top 10 places in London where most crime was commited and there share in total (percentage)
select borough
, sum(value) as Total_incidents 
, sum(value) * 100.0 / (select sum(value) FROM `bigquery-public-data.london_crime.crime_by_lsoa`) as Percentage_of_total
FROM `bigquery-public-data.london_crime.crime_by_lsoa`
group by borough
order by Total_incidents desc
limit 10

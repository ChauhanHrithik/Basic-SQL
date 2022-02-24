-- Asian and Black race representation in Google YoY
SELECT report_year
, race_asian
, race_black
 FROM `bigquery-public-data.google_dei.dar_non_intersectional_representation` 
where workforce = 'representation_tech'
order by report_year desc

INSERT INTO
	Countries (countryname, region)
SELECT DISTINCT
	country
	,region
FROM 
	salesrecordsraw;
-- Total Profit By Region
SELECT
	c.region
	,SUM(od.totalprofit) AS totalprofit
FROM 
	orderdetails od
JOIN 
	orders o ON od.orderid = o.orderid
JOIN 
	countries c ON o.countryid = c.countryid
GROUP BY
	c.region
ORDER BY
	totalprofit DESC	
;

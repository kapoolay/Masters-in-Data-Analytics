-- Identify the top 5 performing item types
SELECT
	i.ItemTypeName
	,SUM(TotalRevenue) AS TotalRevenue
FROM 
	OrderDetails o
JOIN 
	ItemTypes i ON o.ItemTypeID = i.ItemTypeID
GROUP BY
	i.ItemTypeName
ORDER BY
	TotalRevenue DESC
LIMIT 5	
;

